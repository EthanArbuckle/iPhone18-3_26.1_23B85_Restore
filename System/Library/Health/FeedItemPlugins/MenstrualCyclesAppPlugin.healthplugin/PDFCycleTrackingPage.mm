@interface PDFCycleTrackingPage
- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)init;
- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)initWithImage:(id)image options:(id)options;
- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context;
@end

@implementation PDFCycleTrackingPage

- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context
{
  v16.receiver = self;
  v16.super_class = swift_getObjectType();
  contextCopy = context;
  v7 = v16.receiver;
  [(PDFCycleTrackingPage *)&v16 drawWithBox:box toContext:contextCopy];
  UIGraphicsPushContext(contextCopy);
  CGContextSaveGState(contextCopy);
  [v7 boundsForBox_];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CGContextTranslateCTM(contextCopy, 0.0, v14);
  CGContextScaleCTM(contextCopy, 1.0, -1.0);
  sub_29E242990(v9, v11, v13, v15);
  CGContextRestoreGState(contextCopy);
  UIGraphicsPopContext();
}

- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PDFCycleTrackingPage *)&v3 init];
}

- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)initWithImage:(id)image options:(id)options
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_29E242B9C(&qword_2A1817778, type metadata accessor for ImageInitializationOption);
  sub_29E2C3214();
  imageCopy = image;
  v8 = sub_29E2C31F4();

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PDFCycleTrackingPage *)&v11 initWithImage:imageCopy options:v8];

  if (v9)
  {
  }

  return v9;
}

@end