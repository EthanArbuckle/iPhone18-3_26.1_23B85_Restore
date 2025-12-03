@interface CircularUIView
- (void)drawRect:(CGRect)rect;
@end

@implementation CircularUIView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = CircularUIView;
  [(CircularUIView *)&v11 drawRect:?];
  v7 = x + width * 0.5 + -11.0;
  v8 = y + height * 0.5 + -11.0;
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = [UIColor colorWithRed:0.31372549 green:0.31372549 blue:0.31372549 alpha:1.0];
  v12.size.width = 23.0;
  v12.size.height = 23.0;
  v12.origin.x = v7;
  v12.origin.y = v8;
  CGContextAddEllipseInRect(CurrentContext, v12);
  CGContextSetStrokeColorWithColor(CurrentContext, [v10 CGColor]);
  v13.size.width = 23.0;
  v13.size.height = 23.0;
  v13.origin.x = v7;
  v13.origin.y = v8;
  CGContextStrokeEllipseInRect(CurrentContext, v13);
}

@end