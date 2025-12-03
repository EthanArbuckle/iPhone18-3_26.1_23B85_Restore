@interface AllRefinementsTogglesCellLogicController
- (void)toggleValueDidChange:(id)change newValue:(BOOL)value selectionSequenceNumber:(id)number;
@end

@implementation AllRefinementsTogglesCellLogicController

- (void)toggleValueDidChange:(id)change newValue:(BOOL)value selectionSequenceNumber:(id)number
{
  valueCopy = value;
  numberCopy = number;
  changeCopy = change;
  [changeCopy setIsSelected:valueCopy];
  [changeCopy setSelectionSequenceNumber:numberCopy];
}

@end