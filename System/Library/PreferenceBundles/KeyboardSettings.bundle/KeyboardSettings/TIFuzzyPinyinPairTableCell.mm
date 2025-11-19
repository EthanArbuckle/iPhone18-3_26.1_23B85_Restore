@interface TIFuzzyPinyinPairTableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TIFuzzyPinyinPairTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIFuzzyPinyinPairTableCell;
  [(TIFuzzyPinyinPairTableCell *)&v5 refreshCellContentsWithSpecifier:?];
  -[TIFuzzyPinyinPairTableCell setChecked:](self, "setChecked:", [objc_msgSend(a3 propertyForKey:{PSValueKey), "BOOLValue"}]);
}

@end