@interface WKDataListSuggestionsPickerView
- (void)controlEndEditing;
@end

@implementation WKDataListSuggestionsPickerView

- (void)controlEndEditing
{
  control = [(WKDataListSuggestionsPickerView *)self control];
  v4 = [(WKDataListSuggestionsPickerView *)self selectedRowInComponent:0];

  [(WKDataListSuggestionsControl *)control didSelectOptionAtIndex:v4];
}

@end