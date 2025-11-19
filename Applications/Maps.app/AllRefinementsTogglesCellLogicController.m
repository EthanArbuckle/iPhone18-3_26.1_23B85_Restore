@interface AllRefinementsTogglesCellLogicController
- (void)toggleValueDidChange:(id)a3 newValue:(BOOL)a4 selectionSequenceNumber:(id)a5;
@end

@implementation AllRefinementsTogglesCellLogicController

- (void)toggleValueDidChange:(id)a3 newValue:(BOOL)a4 selectionSequenceNumber:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  [v8 setIsSelected:v5];
  [v8 setSelectionSequenceNumber:v7];
}

@end