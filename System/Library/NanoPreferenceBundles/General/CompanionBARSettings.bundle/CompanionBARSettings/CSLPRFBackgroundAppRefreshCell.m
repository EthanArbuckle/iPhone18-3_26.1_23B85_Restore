@interface CSLPRFBackgroundAppRefreshCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CSLPRFBackgroundAppRefreshCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CSLPRFBackgroundAppRefreshCell;
  v4 = a3;
  [(CSLPRFBackgroundAppRefreshCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"GlobalBARStateKey", v8.receiver, v8.super_class}];

  v6 = [v5 BOOLValue];
  v7 = [(CSLPRFBackgroundAppRefreshCell *)self control];
  [v7 setHidden:v6];
}

@end