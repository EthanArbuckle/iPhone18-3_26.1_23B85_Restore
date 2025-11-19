@interface WinterpegTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6;
- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithCoder:(id)a3;
- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation WinterpegTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(int64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v15 = a3;
  v16 = self;
  sub_10008BC28(a3, a6, v12, v11, width, height, x, y);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5 = a3;
  if (!a3)
  {
    v13 = a4;
    v9 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return sub_10008BE78(v5, v9, v10, v12);
  }

  v6 = a4;
  v7 = v5;
  v5 = sub_1000AB73C();
  v9 = v8;

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1000AC06C();
  v12 = v11;

  return sub_10008BE78(v5, v9, v10, v12);
}

- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment_fontDescender) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WinterpegTextAttachment();
  v4 = a3;
  v5 = [(WinterpegTextAttachment *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end