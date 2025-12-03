@interface BCCardSetScrollingAssertion
- (BCCardContent)cardContent;
- (BCCardSetScrollingAssertion)initWithContent:(id)content;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BCCardSetScrollingAssertion

- (BCCardSetScrollingAssertion)initWithContent:(id)content
{
  contentCopy = content;
  v8.receiver = self;
  v8.super_class = BCCardSetScrollingAssertion;
  v5 = [(BCCardSetScrollingAssertion *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cardContent, contentCopy);
    [contentCopy setPerformantForScrolling:1];
  }

  return v6;
}

- (void)dealloc
{
  [(BCCardSetScrollingAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BCCardSetScrollingAssertion;
  [(BCCardSetScrollingAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  cardContent = [(BCCardSetScrollingAssertion *)self cardContent];
  [cardContent setPerformantForScrolling:0];
}

- (BCCardContent)cardContent
{
  WeakRetained = objc_loadWeakRetained(&self->_cardContent);

  return WeakRetained;
}

@end