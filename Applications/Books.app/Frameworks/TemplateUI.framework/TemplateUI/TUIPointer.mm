@interface TUIPointer
+ (TUIPointer)pointerWithRefId:(id)a3 style:(id)a4;
- (TUIPointer)initWithRefId:(id)a3 style:(id)a4;
@end

@implementation TUIPointer

- (TUIPointer)initWithRefId:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TUIPointer;
  v8 = [(TUIPointer *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    refId = v8->_refId;
    v8->_refId = v9;

    objc_storeStrong(&v8->_style, a4);
  }

  return v8;
}

+ (TUIPointer)pointerWithRefId:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [[a1 alloc] initWithRefId:v6 style:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end