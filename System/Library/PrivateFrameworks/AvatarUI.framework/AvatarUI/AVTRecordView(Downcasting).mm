@interface AVTRecordView(Downcasting)
- (id)downcastWithAVTViewHandler:()Downcasting recordViewHandler:;
@end

@implementation AVTRecordView(Downcasting)

- (id)downcastWithAVTViewHandler:()Downcasting recordViewHandler:
{
  if (a4)
  {
    v6 = *(a4 + 16);

    return v6(a4, a1);
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = a1;
    v8.super_class = &off_1F39FEB60;
    return objc_msgSendSuper2(&v8, sel_downcastWithAVTViewHandler_recordViewHandler_);
  }
}

@end