@interface ClosableActionCardViewFactory
+ (id)createWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 action:(id)a6 close:(id)a7;
@end

@implementation ClosableActionCardViewFactory

+ (id)createWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 action:(id)a6 close:(id)a7
{
  v8 = _Block_copy(a6);
  v9 = _Block_copy(a7);
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