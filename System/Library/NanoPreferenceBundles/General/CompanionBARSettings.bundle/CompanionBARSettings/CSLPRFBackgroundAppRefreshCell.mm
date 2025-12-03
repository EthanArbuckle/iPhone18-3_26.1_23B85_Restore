@interface CSLPRFBackgroundAppRefreshCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CSLPRFBackgroundAppRefreshCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CSLPRFBackgroundAppRefreshCell;
  specifierCopy = specifier;
  [(CSLPRFBackgroundAppRefreshCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"GlobalBARStateKey", v8.receiver, v8.super_class}];

  bOOLValue = [v5 BOOLValue];
  control = [(CSLPRFBackgroundAppRefreshCell *)self control];
  [control setHidden:bOOLValue];
}

@end