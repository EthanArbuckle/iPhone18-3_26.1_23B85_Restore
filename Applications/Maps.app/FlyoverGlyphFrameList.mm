@interface FlyoverGlyphFrameList
- ($6FF9910CDCD476ED463384A0FC482A98)frameAtIndex:(SEL)a3;
- (FlyoverGlyphFrameList)init;
- (_NSRange)introFrameRange;
- (_NSRange)loopFrameRange;
- (_NSRange)outroFrameRange;
@end

@implementation FlyoverGlyphFrameList

- (_NSRange)outroFrameRange
{
  length = self->_outroFrameRange.length;
  location = self->_outroFrameRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)loopFrameRange
{
  length = self->_loopFrameRange.length;
  location = self->_loopFrameRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)introFrameRange
{
  length = self->_introFrameRange.length;
  location = self->_introFrameRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- ($6FF9910CDCD476ED463384A0FC482A98)frameAtIndex:(SEL)a3
{
  v7 = *&self->var0.y + 14 * a4;
  if (*(v7 + 12))
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = *(v7 + 10);
  }

  if (*(v7 + 12))
  {
    v9 = *(v7 + 10);
  }

  else
  {
    v9 = *(v7 + 8);
  }

  LOWORD(v4) = *(v7 + 4);
  width = self->var1.width;
  height = self->var1.height;
  v12 = (v4 + *(v7 + 8) * 0.5) * width;
  LOWORD(v5) = *(v7 + 6);
  v13 = (v5 + *(v7 + 10) * 0.5) * width;
  v14 = width * v9;
  v15 = width * v8;
  v16 = -1.57079633;
  v17 = 0;
  if (!*(v7 + 12))
  {
    v16 = 0.0;
  }

  LOWORD(v17) = *v7;
  LOWORD(v6) = *(v7 + 2);
  var2 = self->var2;
  retstr->var0.x = v12;
  retstr->var0.y = v13;
  retstr->var1.width = v14;
  retstr->var1.height = v15;
  retstr->var2 = v16;
  retstr->var3.origin.x = height * v17;
  retstr->var3.origin.y = var2 * v6;
  retstr->var3.size.width = height * v9;
  retstr->var3.size.height = var2 * v8;
  return self;
}

- (FlyoverGlyphFrameList)init
{
  v10.receiver = self;
  v10.super_class = FlyoverGlyphFrameList;
  v2 = [(FlyoverGlyphFrameList *)&v10 init];
  if (v2)
  {
    v3 = [UIImage imageNamed:@"FlyoverGlyphFrames"];
    [v3 scale];
    v5 = vcvtad_u64_f64(v4);
    if (v5 == 2)
    {
      v6 = &unk_101213758;
    }

    else
    {
      if (v5 != 3)
      {
        NSLog(@"%s: Unsupported scale: %ld", "[FlyoverGlyphFrameList init]", v5);
        goto LABEL_11;
      }

      v6 = &unk_10121430C;
    }

    v2->_frames = v6;
    v8 = [v3 CGImage];
    v2->_atlasImage = v8;
    if (v8)
    {
      v2->_inverseScaleFactor = 1.0 / v5;
      v2->_horizontalScale = 1.0 / CGImageGetWidth(v8);
      v2->_verticalScale = 1.0 / CGImageGetHeight(v2->_atlasImage);
      v2->_frameCount = 214;
      v2->_frameDuration = 0.0166666667;
      v2->_introFrameRange = xmmword_101212890;
      v2->_loopFrameRange = xmmword_1012128A0;
      v2->_outroFrameRange = xmmword_1012128B0;
      v7 = v2;
LABEL_12:

      goto LABEL_13;
    }

    NSLog(@"%s: couldn't get a CGImage for the texture atlas", "[FlyoverGlyphFrameList init]");
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

@end