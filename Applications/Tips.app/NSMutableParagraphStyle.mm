@interface NSMutableParagraphStyle
- (NSMutableParagraphStyle)initWithAlignment:(int64_t)a3;
@end

@implementation NSMutableParagraphStyle

- (NSMutableParagraphStyle)initWithAlignment:(int64_t)a3
{
  v4 = [(NSMutableParagraphStyle *)self init];
  [(NSMutableParagraphStyle *)v4 setAlignment:a3];
  return v4;
}

@end