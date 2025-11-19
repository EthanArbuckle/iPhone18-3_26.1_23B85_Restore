@interface EKUIFullWidthDividerTableViewCell
- (CGRect)_separatorFrame;
@end

@implementation EKUIFullWidthDividerTableViewCell

- (CGRect)_separatorFrame
{
  v11.receiver = self;
  v11.super_class = EKUIFullWidthDividerTableViewCell;
  [(EKUIFullWidthDividerTableViewCell *)&v11 _separatorFrame];
  v4 = v3;
  v6 = v5;
  [(EKUIFullWidthDividerTableViewCell *)self bounds];
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end