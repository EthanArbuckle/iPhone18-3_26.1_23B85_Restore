@interface _AAURLSessionDelegate
- (NSURLSessionDataDelegate)delegate;
- (_AAURLSessionDelegate)initWithDelegate:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation _AAURLSessionDelegate

- (_AAURLSessionDelegate)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _AAURLSessionDelegate;
  v5 = [(_AAURLSessionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:v11 dataTask:v8 didReceiveData:v9];
  }
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:v8 didBecomeInvalidWithError:v6];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained URLSession:v11 task:v8 didCompleteWithError:v9];
  }
}

- (NSURLSessionDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end