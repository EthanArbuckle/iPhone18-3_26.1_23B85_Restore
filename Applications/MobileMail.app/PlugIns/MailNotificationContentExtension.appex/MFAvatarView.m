@interface MFAvatarView
+ (OS_os_log)log;
- (BOOL)showsContactOnTap;
- (CNAvatarViewDelegate)delegate;
- (MFAvatarView)initWithFrame:(CGRect)a3;
- (id)displayPersonForContext:(id)a3 avatarGenerationBlock:(id)a4;
- (id)displayPersonForContext:(id)a3 avatarGenerator:(id)a4;
- (id)displayPersonForEmailAddress:(id)a3 usingContactStore:(id)a4;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setShowsContactOnTap:(BOOL)a3;
@end

@implementation MFAvatarView

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005714;
  block[3] = &unk_1000389B8;
  block[4] = a1;
  if (qword_1000425A8 != -1)
  {
    dispatch_once(&qword_1000425A8, block);
  }

  v2 = qword_1000425A0;

  return v2;
}

- (MFAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = MFAvatarView;
  v7 = [(MFAvatarView *)&v13 initWithFrame:?];
  if (v7)
  {
    if (EMBlackPearlIsFeatureEnabled())
    {
      v8 = [[UIImageView alloc] initWithFrame:{x, y, width, height}];
      v9 = &OBJC_IVAR___MFAvatarView__avatarView;
    }

    else
    {
      v8 = [[CNAvatarView alloc] initWithFrame:{x, y, width, height}];
      v9 = &OBJC_IVAR___MFAvatarView__contactAvatarView;
    }

    v10 = *v9;
    v11 = *(&v7->super.super.super.isa + v10);
    *(&v7->super.super.super.isa + v10) = v8;

    [(MFAvatarView *)v7 addSubview:*(&v7->super.super.super.isa + v10)];
  }

  return v7;
}

- (id)displayPersonForContext:(id)a3 avatarGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000059F0;
    v12[3] = &unk_1000389E0;
    v13 = v7;
    v14 = v6;
    v9 = [(MFAvatarView *)self displayPersonForContext:v14 avatarGenerationBlock:v12];
  }

  else
  {
    v10 = +[MFAvatarView log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10001D474(v6, v8, v10);
    }

    v9 = objc_alloc_init(EFManualCancelationToken);
  }

  return v9;
}

- (id)displayPersonForContext:(id)a3 avatarGenerationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v12 = +[MFAvatarView log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10001D4FC(v6, v8, v12);
    }

    v11 = objc_alloc_init(EFManualCancelationToken);
    goto LABEL_8;
  }

  v9 = [(MFAvatarView *)self context];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = [(MFAvatarView *)self token];
LABEL_8:
    v13 = v11;
    goto LABEL_10;
  }

  [(MFAvatarView *)self setContext:v6];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005C1C;
  v15[3] = &unk_100038A30;
  objc_copyWeak(&v17, &location);
  v16 = v6;
  v13 = (v8)[2](v8, v15);
  [(MFAvatarView *)self setToken:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
LABEL_10:

  return v13;
}

- (id)displayPersonForEmailAddress:(id)a3 usingContactStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFAvatarView *)self displayedContact];
  [v8 cancel];

  if (v6)
  {
    v9 = [EFScheduler globalAsyncSchedulerWithQualityOfService:25];
    v10 = [(MFAvatarView *)self contactAvatarView];
    v11 = [v10 descriptorForRequiredKeys];
    v27 = v11;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v13 = [v7 em_onScheduler:v9 contactFutureForEmailAddress:v6 keysToFetch:v12];
    [(MFAvatarView *)self setDisplayedContact:v13];
  }

  else
  {
    v14 = +[NSError ef_cancelledError];
    v15 = [EFFuture futureWithError:v14];
    [(MFAvatarView *)self setDisplayedContact:v15];
  }

  objc_initWeak(&location, self);
  v16 = [(MFAvatarView *)self displayedContact];
  v17 = +[EFScheduler mainThreadScheduler];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100006378;
  v24[3] = &unk_100038A58;
  objc_copyWeak(&v25, &location);
  [v16 onScheduler:v17 addSuccessBlock:v24];

  v18 = [(MFAvatarView *)self displayedContact];
  v19 = +[EFScheduler mainThreadScheduler];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006474;
  v22[3] = &unk_100038A80;
  objc_copyWeak(&v23, &location);
  [v18 onScheduler:v19 addFailureBlock:v22];

  v20 = [(MFAvatarView *)self displayedContact];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v20;
}

- (void)setShowsContactOnTap:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFAvatarView *)self contactAvatarView];
  [v4 setShowsContactOnTap:v3];
}

- (BOOL)showsContactOnTap
{
  v2 = [(MFAvatarView *)self contactAvatarView];
  v3 = [v2 showsContactOnTap];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = [(MFAvatarView *)self contactAvatarView];
  [v4 setDelegate:v5];
}

- (CNAvatarViewDelegate)delegate
{
  v2 = [(MFAvatarView *)self contactAvatarView];
  v3 = [v2 delegate];

  return v3;
}

- (void)dealloc
{
  v3 = [(MFAvatarView *)self displayedContact];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = MFAvatarView;
  [(MFAvatarView *)&v4 dealloc];
}

@end