@interface EKEventProposeNewTimeItem
+ (BOOL)eventShowsProposeTime:(id)a3;
- (EKEventProposeNewTimeItem)initWithModel:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4;
- (void)_updateCellIfNeededForWidth:(double)a3;
- (void)reset;
- (void)setCellPosition:(int)a3;
@end

@implementation EKEventProposeNewTimeItem

- (EKEventProposeNewTimeItem)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKEventProposeNewTimeItem;
  v6 = [(EKEventProposeNewTimeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

+ (BOOL)eventShowsProposeTime:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 allowsProposedTimeModifications])
  {
    if ([v3 serverSupportedProposeNewTime])
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 organizer];
      if (v5)
      {
        v6 = [v3 organizer];
        v9[0] = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
        v4 = [EKUIEmailCompositionManager canShowViewControllerForEvent:v3 withParticipantRecipients:v7];
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

- (void)setCellPosition:(int)a3
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeItem;
  [(EKEventDetailItem *)&v4 setCellPosition:*&a3];
  self->_cellNeedsUpdate = 1;
}

- (void)_updateCellIfNeededForWidth:(double)a3
{
  if (self->_cellNeedsUpdate)
  {
    [(UITableViewCell *)self->_cell update];
    [(UITableViewCell *)self->_cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:a3];
    self->_cellNeedsUpdate = 0;
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
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

- (id)detailViewControllerWithFrame:(CGRect)a3 forSubitemAtIndex:(unint64_t)a4
{
  v4 = [[EKEventProposeNewTimeViewController alloc] initWithEvent:self->super._event model:self->_model];

  return v4;
}

@end