@interface RCEditingProgressItem
- (RCEditingProgressDelegate)delegate;
- (RCEditingProgressItem)init;
@end

@implementation RCEditingProgressItem

- (RCEditingProgressItem)init
{
  v8.receiver = self;
  v8.super_class = RCEditingProgressItem;
  v2 = [(RCEditingProgressItem *)&v8 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_time(0, 350000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009E280;
    v5[3] = &unk_10028A6A0;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, &_dispatch_main_q, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (RCEditingProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end