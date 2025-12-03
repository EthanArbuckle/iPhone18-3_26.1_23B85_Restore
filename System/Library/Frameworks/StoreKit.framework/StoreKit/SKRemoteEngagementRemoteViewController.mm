@interface SKRemoteEngagementRemoteViewController
- (SKEngagementPresenterProtocol)delegate;
- (void)engagementTaskDidFinishWithResult:(id)result resultData:(id)data error:(id)error completion:(id)completion;
- (void)preferredContentSizeDidChange:(CGSize)change;
@end

@implementation SKRemoteEngagementRemoteViewController

- (void)engagementTaskDidFinishWithResult:(id)result resultData:(id)data error:(id)error completion:(id)completion
{
  resultCopy = result;
  dataCopy = data;
  errorCopy = error;
  completionCopy = completion;
  delegate = [(SKRemoteEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v14 = delegate;
    delegate2 = [(SKRemoteEngagementRemoteViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate3 = [(SKRemoteEngagementRemoteViewController *)self delegate];
      [delegate3 engagementTaskDidFinishWithResult:resultCopy resultData:dataCopy error:errorCopy completion:completionCopy];
    }
  }
}

- (void)preferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  delegate = [(SKRemoteEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(SKRemoteEngagementRemoteViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(SKRemoteEngagementRemoteViewController *)self delegate];
      [delegate3 preferredContentSizeDidChange:{width, height}];
    }
  }
}

- (SKEngagementPresenterProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end