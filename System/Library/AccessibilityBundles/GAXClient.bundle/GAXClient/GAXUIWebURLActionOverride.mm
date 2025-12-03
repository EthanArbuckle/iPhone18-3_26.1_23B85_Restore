@interface GAXUIWebURLActionOverride
+ (BOOL)performDefaultActionForURL:(id)l andDOMNode:(id)node withAllowedTypes:(unint64_t)types forFrame:(id)frame inView:(id)view;
@end

@implementation GAXUIWebURLActionOverride

+ (BOOL)performDefaultActionForURL:(id)l andDOMNode:(id)node withAllowedTypes:(unint64_t)types forFrame:(id)frame inView:(id)view
{
  lCopy = l;
  nodeCopy = node;
  frameCopy = frame;
  viewCopy = view;
  v16 = +[GAXClient sharedInstance];
  if ([v16 serverMode] == 2)
  {
    v17 = GAXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = lCopy;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Guided Access returning NO for perform action for URL: %{public}@", buf, 0xCu);
    }

    [v16 asynchronouslyPresentGuidedAccessActiveBanner];
    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = &OBJC_METACLASS___GAXUIWebURLActionOverride;
    v18 = objc_msgSendSuper2(&v20, "performDefaultActionForURL:andDOMNode:withAllowedTypes:forFrame:inView:", lCopy, nodeCopy, types, frameCopy, viewCopy);
  }

  return v18;
}

@end