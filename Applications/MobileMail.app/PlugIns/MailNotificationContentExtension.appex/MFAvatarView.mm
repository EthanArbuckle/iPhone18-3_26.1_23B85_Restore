@interface MFAvatarView
+ (OS_os_log)log;
- (BOOL)showsContactOnTap;
- (CNAvatarViewDelegate)delegate;
- (MFAvatarView)initWithFrame:(CGRect)frame;
- (id)displayPersonForContext:(id)context avatarGenerationBlock:(id)block;
- (id)displayPersonForContext:(id)context avatarGenerator:(id)generator;
- (id)displayPersonForEmailAddress:(id)address usingContactStore:(id)store;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setShowsContactOnTap:(BOOL)tap;
@end

@implementation MFAvatarView

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005714;
  block[3] = &unk_1000389B8;
  block[4] = self;
  if (qword_1000425A8 != -1)
  {
    dispatch_once(&qword_1000425A8, block);
  }

  v2 = qword_1000425A0;

  return v2;
}

- (MFAvatarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (id)displayPersonForContext:(id)context avatarGenerator:(id)generator
{
  contextCopy = context;
  generatorCopy = generator;
  v8 = generatorCopy;
  if (contextCopy && generatorCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000059F0;
    v12[3] = &unk_1000389E0;
    v13 = generatorCopy;
    v14 = contextCopy;
    v9 = [(MFAvatarView *)self displayPersonForContext:v14 avatarGenerationBlock:v12];
  }

  else
  {
    v10 = +[MFAvatarView log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10001D474(contextCopy, v8, v10);
    }

    v9 = objc_alloc_init(EFManualCancelationToken);
  }

  return v9;
}

- (id)displayPersonForContext:(id)context avatarGenerationBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = blockCopy;
  if (!contextCopy || !blockCopy)
  {
    v12 = +[MFAvatarView log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10001D4FC(contextCopy, v8, v12);
    }

    token = objc_alloc_init(EFManualCancelationToken);
    goto LABEL_8;
  }

  context = [(MFAvatarView *)self context];
  v10 = [contextCopy isEqual:context];

  if (v10)
  {
    token = [(MFAvatarView *)self token];
LABEL_8:
    v13 = token;
    goto LABEL_10;
  }

  [(MFAvatarView *)self setContext:contextCopy];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005C1C;
  v15[3] = &unk_100038A30;
  objc_copyWeak(&v17, &location);
  v16 = contextCopy;
  v13 = (v8)[2](v8, v15);
  [(MFAvatarView *)self setToken:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
LABEL_10:

  return v13;
}

- (id)displayPersonForEmailAddress:(id)address usingContactStore:(id)store
{
  addressCopy = address;
  storeCopy = store;
  displayedContact = [(MFAvatarView *)self displayedContact];
  [displayedContact cancel];

  if (addressCopy)
  {
    v9 = [EFScheduler globalAsyncSchedulerWithQualityOfService:25];
    contactAvatarView = [(MFAvatarView *)self contactAvatarView];
    descriptorForRequiredKeys = [contactAvatarView descriptorForRequiredKeys];
    v27 = descriptorForRequiredKeys;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v13 = [storeCopy em_onScheduler:v9 contactFutureForEmailAddress:addressCopy keysToFetch:v12];
    [(MFAvatarView *)self setDisplayedContact:v13];
  }

  else
  {
    v14 = +[NSError ef_cancelledError];
    v15 = [EFFuture futureWithError:v14];
    [(MFAvatarView *)self setDisplayedContact:v15];
  }

  objc_initWeak(&location, self);
  displayedContact2 = [(MFAvatarView *)self displayedContact];
  v17 = +[EFScheduler mainThreadScheduler];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100006378;
  v24[3] = &unk_100038A58;
  objc_copyWeak(&v25, &location);
  [displayedContact2 onScheduler:v17 addSuccessBlock:v24];

  displayedContact3 = [(MFAvatarView *)self displayedContact];
  v19 = +[EFScheduler mainThreadScheduler];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006474;
  v22[3] = &unk_100038A80;
  objc_copyWeak(&v23, &location);
  [displayedContact3 onScheduler:v19 addFailureBlock:v22];

  displayedContact4 = [(MFAvatarView *)self displayedContact];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return displayedContact4;
}

- (void)setShowsContactOnTap:(BOOL)tap
{
  tapCopy = tap;
  contactAvatarView = [(MFAvatarView *)self contactAvatarView];
  [contactAvatarView setShowsContactOnTap:tapCopy];
}

- (BOOL)showsContactOnTap
{
  contactAvatarView = [(MFAvatarView *)self contactAvatarView];
  showsContactOnTap = [contactAvatarView showsContactOnTap];

  return showsContactOnTap;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  contactAvatarView = [(MFAvatarView *)self contactAvatarView];
  [contactAvatarView setDelegate:delegateCopy];
}

- (CNAvatarViewDelegate)delegate
{
  contactAvatarView = [(MFAvatarView *)self contactAvatarView];
  delegate = [contactAvatarView delegate];

  return delegate;
}

- (void)dealloc
{
  displayedContact = [(MFAvatarView *)self displayedContact];
  [displayedContact cancel];

  v4.receiver = self;
  v4.super_class = MFAvatarView;
  [(MFAvatarView *)&v4 dealloc];
}

@end