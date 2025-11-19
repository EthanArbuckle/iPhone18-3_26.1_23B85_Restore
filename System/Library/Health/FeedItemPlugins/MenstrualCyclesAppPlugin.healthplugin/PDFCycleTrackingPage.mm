@interface PDFCycleTrackingPage
- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)init;
- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)initWithImage:(id)a3 options:(id)a4;
- (void)drawWithBox:(int64_t)a3 toContext:(CGContext *)a4;
@end

@implementation PDFCycleTrackingPage

- (void)drawWithBox:(int64_t)a3 toContext:(CGContext *)a4
{
  v16.receiver = self;
  v16.super_class = swift_getObjectType();
  v6 = a4;
  v7 = v16.receiver;
  [(PDFCycleTrackingPage *)&v16 drawWithBox:a3 toContext:v6];
  UIGraphicsPushContext(v6);
  CGContextSaveGState(v6);
  [v7 boundsForBox_];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CGContextTranslateCTM(v6, 0.0, v14);
  CGContextScaleCTM(v6, 1.0, -1.0);
  sub_29E242990(v9, v11, v13, v15);
  CGContextRestoreGState(v6);
  UIGraphicsPopContext();
}

- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PDFCycleTrackingPage *)&v3 init];
}

- (_TtC24MenstrualCyclesAppPlugin20PDFCycleTrackingPage)initWithImage:(id)a3 options:(id)a4
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_29E242B9C(&qword_2A1817778, type metadata accessor for ImageInitializationOption);
  sub_29E2C3214();
  v7 = a3;
  v8 = sub_29E2C31F4();

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PDFCycleTrackingPage *)&v11 initWithImage:v7 options:v8];

  if (v9)
  {
  }

  return v9;
}

@end