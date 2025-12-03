@interface TIFuzzyPinyinPairTableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TIFuzzyPinyinPairTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = TIFuzzyPinyinPairTableCell;
  [(TIFuzzyPinyinPairTableCell *)&v5 refreshCellContentsWithSpecifier:?];
  -[TIFuzzyPinyinPairTableCell setChecked:](self, "setChecked:", [objc_msgSend(specifier propertyForKey:{PSValueKey), "BOOLValue"}]);
}

@end