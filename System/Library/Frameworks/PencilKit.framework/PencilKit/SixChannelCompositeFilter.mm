@interface SixChannelCompositeFilter
- (CIImage)outputImage;
- (_TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter)init;
- (_TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter)initWithCoder:(id)coder;
@end

@implementation SixChannelCompositeFilter

- (CIImage)outputImage
{
  selfCopy = self;
  v3 = SixChannelCompositeFilter.outputImage.getter();

  return v3;
}

- (_TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_backgroundImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_multiplyImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_addImage) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SixChannelCompositeFilter();
  return [(SixChannelCompositeFilter *)&v3 init];
}

- (_TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_backgroundImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_multiplyImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9PencilKitP33_45B1B8C2C17199CF2EF5F41F5CBE091B25SixChannelCompositeFilter_addImage) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SixChannelCompositeFilter();
  coderCopy = coder;
  v5 = [(SixChannelCompositeFilter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end