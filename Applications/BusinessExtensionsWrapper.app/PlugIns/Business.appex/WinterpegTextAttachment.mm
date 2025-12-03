@interface WinterpegTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index;
- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithCoder:(id)coder;
- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation WinterpegTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(int64_t)index
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  containerCopy = container;
  selfCopy = self;
  sub_10008BC28(container, index, v12, v11, width, height, x, y);
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

- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  if (!data)
  {
    typeCopy = type;
    v9 = 0xF000000000000000;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    return sub_10008BE78(dataCopy, v9, v10, v12);
  }

  typeCopy2 = type;
  v7 = dataCopy;
  dataCopy = sub_1000AB73C();
  v9 = v8;

  if (!type)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1000AC06C();
  v12 = v11;

  return sub_10008BE78(dataCopy, v9, v10, v12);
}

- (_TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8BusinessP33_F1257CEC6FBB055D52A44E01318C013B23WinterpegTextAttachment_fontDescender) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for WinterpegTextAttachment();
  coderCopy = coder;
  v5 = [(WinterpegTextAttachment *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end