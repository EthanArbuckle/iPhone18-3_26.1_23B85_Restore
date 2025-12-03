@interface ClosableActionCardViewFactory
+ (id)createWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle action:(id)action close:(id)close;
@end

@implementation ClosableActionCardViewFactory

+ (id)createWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle action:(id)action close:(id)close
{
  v8 = _Block_copy(action);
  v9 = _Block_copy(close);
  v10 = sub_1171B0();
  v12 = v11;
  v13 = sub_1171B0();
  v15 = v14;
  v16 = sub_1171B0();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *&v23 = sub_AB1A4;
  *(&v23 + 1) = v20;
  v21 = sub_A9E40(v10, v12, v13, v15, v16, v18, sub_AB1A4, v19, v23);

  return v21;
}

@end