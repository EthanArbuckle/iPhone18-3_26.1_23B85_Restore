@interface WKPreviewAction
+ (id)actionWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5 handler:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation WKPreviewAction

+ (id)actionWithIdentifier:(id)a3 title:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  result = [a1 actionWithTitle:a4 style:a5 handler:a6];
  *(result + 7) = a3;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = WKPreviewAction;
  v4 = [(UIPreviewAction *)&v6 copyWithZone:a3];
  v4[7] = [(WKPreviewAction *)self identifier];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WKPreviewAction;
  [(WKPreviewAction *)&v3 dealloc];
}

@end