@interface BrowseVenueBusinessController
- (BOOL)updateContentViewForVenueAndReturnYESIfChanged;
- (BrowseVenueBusinessController)initWithDelegate:(id)a3;
- (LocalSearchBusinessControllerDelegate)delegate;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)handleMapTypeDidChange:(unint64_t)a3;
- (void)handleVenueWithFocusDidChange:(id)a3;
- (void)immediatelyHandleVenueWithFocusDidChange:(id)a3;
- (void)setContentView:(id)a3;
@end

@implementation BrowseVenueBusinessController

- (LocalSearchBusinessControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v8 = a5;
  v12 = objc_alloc_init(GEOPlaceActionDetails);
  v9 = [(BrowseVenueBusinessController *)self venue];
  v10 = [v9 businessID];

  if (v10)
  {
    [v12 setBusinessID:v10];
  }

  v11 = +[MKMapService sharedService];
  [v11 captureUserAction:v6 onTarget:v5 eventValue:v8 placeActionDetails:v12];
}

- (void)immediatelyHandleVenueWithFocusDidChange:(id)a3
{
  v9 = a3;
  v4 = [(BrowseVenueBusinessController *)self venue];
  if ([v4 venueID])
  {
  }

  else
  {
    v5 = [v9 venueID];

    if (!v5)
    {
      goto LABEL_14;
    }
  }

  v6 = [(BrowseVenueBusinessController *)self venue];
  [(BrowseVenueBusinessController *)self setVenue:v9];
  if (![(BrowseVenueBusinessController *)self shouldBeVisible])
  {
    if (v9 && v6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = [(BrowseVenueBusinessController *)self updateContentViewForVenueAndReturnYESIfChanged];
  if (!v9 || !v6)
  {
LABEL_11:
    v8 = [(BrowseVenueBusinessController *)self delegate];
    [v8 businessControllerVisibilityDidChange:self];
    goto LABEL_12;
  }

  if (v7)
  {
    v8 = [(BrowseVenueBusinessController *)self delegate];
    [v8 businessControllerContentSizeDidChange:self];
LABEL_12:
  }

LABEL_13:

LABEL_14:
}

- (void)handleMapTypeDidChange:(unint64_t)a3
{
  if ([(BrowseVenueBusinessController *)self lastUpdatedMapType]!= a3)
  {
    [(BrowseVenueBusinessController *)self setLastUpdatedMapType:a3];
    v5 = [(BrowseVenueBusinessController *)self delegate];
    [v5 businessControllerVisibilityDidChange:self];
  }
}

- (void)handleVenueWithFocusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(BrowseVenueBusinessController *)self venue];
  if ([v5 venueID])
  {
  }

  else
  {
    v6 = [v4 venueID];

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (![(BrowseVenueBusinessController *)self updatingVenueAsync])
  {
    v7 = [(BrowseVenueBusinessController *)self delegate];
    v8 = [v7 viewHasAppeared];

    if (v4 || (v8 & 1) != 0)
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
  v3 = [(BrowseVenueBusinessController *)self venue];
  v4 = [v3 shortName];

  v5 = [v4 length];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 localizedStringForKey:@"Browse [venue with name]" value:@"localized string not found" table:0];

    v9 = [NSString stringWithFormat:v8, v4];
    v7 = v8;
  }

  else
  {
    v9 = [v6 localizedStringForKey:@"Browse [venue without name]" value:@"localized string not found" table:0];
  }

  v10 = [(BrowseVenueBusinessController *)self contentView];
  v11 = [v10 textForState:1];

  if (!(v11 | v9) || v11 && ([v11 isEqualToString:v9] & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(BrowseVenueBusinessController *)self contentView];
    v12 = 1;
    [v13 setText:v9 forState:1];
  }

  return v12;
}

- (void)setContentView:(id)a3
{
  objc_storeStrong(&self->_contentView, a3);
  v5 = a3;
  [(LocalSearchView *)self->_contentView setAccessibilityIdentifier:@"BrowseVenueContentView"];
  [(LocalSearchView *)self->_contentView setState:1];
  [(BrowseVenueBusinessController *)self updateContentViewForVenueAndReturnYESIfChanged];
  [v5 setText:0 forState:3];
  [v5 setText:0 forState:4];
}

- (BrowseVenueBusinessController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BrowseVenueBusinessController;
  v5 = [(BrowseVenueBusinessController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end