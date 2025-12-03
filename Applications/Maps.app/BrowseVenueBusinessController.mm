@interface BrowseVenueBusinessController
- (BOOL)updateContentViewForVenueAndReturnYESIfChanged;
- (BrowseVenueBusinessController)initWithDelegate:(id)delegate;
- (LocalSearchBusinessControllerDelegate)delegate;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)handleMapTypeDidChange:(unint64_t)change;
- (void)handleVenueWithFocusDidChange:(id)change;
- (void)immediatelyHandleVenueWithFocusDidChange:(id)change;
- (void)setContentView:(id)view;
@end

@implementation BrowseVenueBusinessController

- (LocalSearchBusinessControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  v12 = objc_alloc_init(GEOPlaceActionDetails);
  venue = [(BrowseVenueBusinessController *)self venue];
  businessID = [venue businessID];

  if (businessID)
  {
    [v12 setBusinessID:businessID];
  }

  v11 = +[MKMapService sharedService];
  [v11 captureUserAction:v6 onTarget:v5 eventValue:valueCopy placeActionDetails:v12];
}

- (void)immediatelyHandleVenueWithFocusDidChange:(id)change
{
  changeCopy = change;
  venue = [(BrowseVenueBusinessController *)self venue];
  if ([venue venueID])
  {
  }

  else
  {
    venueID = [changeCopy venueID];

    if (!venueID)
    {
      goto LABEL_14;
    }
  }

  venue2 = [(BrowseVenueBusinessController *)self venue];
  [(BrowseVenueBusinessController *)self setVenue:changeCopy];
  if (![(BrowseVenueBusinessController *)self shouldBeVisible])
  {
    if (changeCopy && venue2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  updateContentViewForVenueAndReturnYESIfChanged = [(BrowseVenueBusinessController *)self updateContentViewForVenueAndReturnYESIfChanged];
  if (!changeCopy || !venue2)
  {
LABEL_11:
    delegate = [(BrowseVenueBusinessController *)self delegate];
    [delegate businessControllerVisibilityDidChange:self];
    goto LABEL_12;
  }

  if (updateContentViewForVenueAndReturnYESIfChanged)
  {
    delegate = [(BrowseVenueBusinessController *)self delegate];
    [delegate businessControllerContentSizeDidChange:self];
LABEL_12:
  }

LABEL_13:

LABEL_14:
}

- (void)handleMapTypeDidChange:(unint64_t)change
{
  if ([(BrowseVenueBusinessController *)self lastUpdatedMapType]!= change)
  {
    [(BrowseVenueBusinessController *)self setLastUpdatedMapType:change];
    delegate = [(BrowseVenueBusinessController *)self delegate];
    [delegate businessControllerVisibilityDidChange:self];
  }
}

- (void)handleVenueWithFocusDidChange:(id)change
{
  changeCopy = change;
  venue = [(BrowseVenueBusinessController *)self venue];
  if ([venue venueID])
  {
  }

  else
  {
    venueID = [changeCopy venueID];

    if (!venueID)
    {
      goto LABEL_12;
    }
  }

  if (![(BrowseVenueBusinessController *)self updatingVenueAsync])
  {
    delegate = [(BrowseVenueBusinessController *)self delegate];
    viewHasAppeared = [delegate viewHasAppeared];

    if (changeCopy || (viewHasAppeared & 1) != 0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v10 = v9;
      [(BrowseVenueBusinessController *)self lastVenueUpdateTimestamp];
      v12 = v10 - v11;
      if (v12 >= 1.0)
      {
        v13 = 100000000;
      }

      else
      {
        v13 = (1000000000.0 - v12 * 1000000000.0);
      }

      [(BrowseVenueBusinessController *)self setUpdatingVenueAsync:1];
      v14 = dispatch_time(0, v13);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007B6094;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v14, &_dispatch_main_q, block);
    }

    else
    {
      [(BrowseVenueBusinessController *)self immediatelyHandleVenueWithFocusDidChange:0];
    }
  }

LABEL_12:
}

- (BOOL)updateContentViewForVenueAndReturnYESIfChanged
{
  venue = [(BrowseVenueBusinessController *)self venue];
  shortName = [venue shortName];

  v5 = [shortName length];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 localizedStringForKey:@"Browse [venue with name]" value:@"localized string not found" table:0];

    v9 = [NSString stringWithFormat:v8, shortName];
    v7 = v8;
  }

  else
  {
    v9 = [v6 localizedStringForKey:@"Browse [venue without name]" value:@"localized string not found" table:0];
  }

  contentView = [(BrowseVenueBusinessController *)self contentView];
  v11 = [contentView textForState:1];

  if (!(v11 | v9) || v11 && ([v11 isEqualToString:v9] & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    contentView2 = [(BrowseVenueBusinessController *)self contentView];
    v12 = 1;
    [contentView2 setText:v9 forState:1];
  }

  return v12;
}

- (void)setContentView:(id)view
{
  objc_storeStrong(&self->_contentView, view);
  viewCopy = view;
  [(LocalSearchView *)self->_contentView setAccessibilityIdentifier:@"BrowseVenueContentView"];
  [(LocalSearchView *)self->_contentView setState:1];
  [(BrowseVenueBusinessController *)self updateContentViewForVenueAndReturnYESIfChanged];
  [viewCopy setText:0 forState:3];
  [viewCopy setText:0 forState:4];
}

- (BrowseVenueBusinessController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = BrowseVenueBusinessController;
  v5 = [(BrowseVenueBusinessController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end