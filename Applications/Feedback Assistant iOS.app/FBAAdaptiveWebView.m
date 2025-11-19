@interface FBAAdaptiveWebView
- (id)loadHTMLString:(id)a3 baseURL:(id)a4;
- (void)layoutSubviews;
- (void)updateViewport;
@end

@implementation FBAAdaptiveWebView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FBAAdaptiveWebView;
  [(FBAAdaptiveWebView *)&v3 layoutSubviews];
  [(FBAAdaptiveWebView *)self updateViewport];
}

- (id)loadHTMLString:(id)a3 baseURL:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBAAdaptiveWebView;
  v5 = [(FBAAdaptiveWebView *)&v7 loadHTMLString:a3 baseURL:a4];
  [(FBAAdaptiveWebView *)self updateViewport];

  return v5;
}

- (void)updateViewport
{
  v3 = [NSString stringWithFormat:@"var viewport = 'width=device-width initial-scale=1 minimum-scale=1 maximum-scale=1 user-scalable=no'                     var viewportElement = document.querySelector('meta[name=viewport]');                     if (viewportElement) {                     viewportElement.content = viewport;                     } else {                     viewportElement = document.createElement('meta');                     viewportElement.name = 'viewport';                     viewportElement.content = viewport;                     document.getElementsByTagName('head')[0].appendChild(viewportElement);                     }"];;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000383C8;
  v4[3] = &unk_1000DFA10;
  v4[4] = self;
  [(FBAAdaptiveWebView *)self evaluateJavaScript:v3 completionHandler:v4];
}

@end