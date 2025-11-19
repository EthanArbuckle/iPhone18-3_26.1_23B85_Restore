@interface WKDataListSuggestionsPickerView
- (void)controlEndEditing;
@end

@implementation WKDataListSuggestionsPickerView

- (void)controlEndEditing
{
  v3 = [(WKDataListSuggestionsPickerView *)self control];
  v4 = [(WKDataListSuggestionsPickerView *)self selectedRowInComponent:0];

  [(WKDataListSuggestionsControl *)v3 didSelectOptionAtIndex:v4];
}

@end