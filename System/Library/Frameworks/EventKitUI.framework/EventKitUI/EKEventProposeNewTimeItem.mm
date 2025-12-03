@interface EKEventProposeNewTimeItem
+ (BOOL)eventShowsProposeTime:(id)time;
- (EKEventProposeNewTimeItem)initWithModel:(id)model;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)_updateCellIfNeededForWidth:(double)width;
- (void)reset;
- (void)setCellPosition:(int)position;
@end

@implementation EKEventProposeNewTimeItem

- (EKEventProposeNewTimeItem)initWithModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = EKEventProposeNewTimeItem;
  v6 = [(EKEventProposeNewTimeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
  }

  return v7;
}

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

+ (BOOL)eventShowsProposeTime:(id)time
{
  v9[1] = *MEMORY[0x1E69E9840];
  timeCopy = time;
  if ([timeCopy allowsProposedTimeModifications])
  {
    if ([timeCopy serverSupportedProposeNewTime])
    {
      v4 = 1;
    }

    else
    {
      organizer = [timeCopy organizer];
      if (organizer)
      {
        organizer2 = [timeCopy organizer];
        v9[0] = organizer2;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
        v4 = [EKUIEmailCompositionManager canShowViewControllerForEvent:timeCopy withParticipantRecipients:v7];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCellPosition:(int)position
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeItem;
  [(EKEventDetailItem *)&v4 setCellPosition:*&position];
  self->_cellNeedsUpdate = 1;
}

- (void)_updateCellIfNeededForWidth:(double)width
{
  if (self->_cellNeedsUpdate)
  {
    [(UITableViewCell *)self->_cell update];
    [(UITableViewCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:width];
    self->_cellNeedsUpdate = 0;
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailProposeNewTimeCell alloc] initWithEvent:self->super._event editable:0];
    v6 = self->_cell;
    self->_cell = &v5->super.super.super;

    self->_cellNeedsUpdate = 1;
    [(UITableViewCell *)self->_cell frame];
    [(EKEventProposeNewTimeItem *)self _updateCellIfNeededForWidth:v7];
    cell = self->_cell;
  }

  return cell;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v4 = [[EKEventProposeNewTimeViewController alloc] initWithEvent:self->super._event model:self->_model];

  return v4;
}

@end