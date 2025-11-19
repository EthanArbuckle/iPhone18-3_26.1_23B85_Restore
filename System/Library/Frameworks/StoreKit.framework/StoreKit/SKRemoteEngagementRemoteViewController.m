@interface SKRemoteEngagementRemoteViewController
- (SKEngagementPresenterProtocol)delegate;
- (void)engagementTaskDidFinishWithResult:(id)a3 resultData:(id)a4 error:(id)a5 completion:(id)a6;
- (void)preferredContentSizeDidChange:(CGSize)a3;
@end

@implementation SKRemoteEngagementRemoteViewController

- (void)engagementTaskDidFinishWithResult:(id)a3 resultData:(id)a4 error:(id)a5 completion:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(SKRemoteEngagementRemoteViewController *)self delegate];
  if (v13)
  {
    v14 = v13;
    v15 = [(SKRemoteEngagementRemoteViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(SKRemoteEngagementRemoteViewController *)self delegate];
      [v17 engagementTaskDidFinishWithResult:v18 resultData:v10 error:v11 completion:v12];
    }
  }
}

- (void)preferredContentSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SKRemoteEngagementRemoteViewController *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(SKRemoteEngagementRemoteViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(SKRemoteEngagementRemoteViewController *)self delegate];
      [v10 preferredContentSizeDidChange:{width, height}];
    }
  }
}

- (SKEngagementPresenterProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end