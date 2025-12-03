@interface AXMGeometryUtilities
+ (CGRect)motionCorrectedNormalizedFrame:(CGRect)frame fromAttitude:(id)attitude fromFieldOfViewX:(float)x fromFieldOfViewY:(float)y toAttitude:(id)toAttitude toFieldOfViewX:(float)viewX toFieldOfViewY:(float)viewY interfaceOrientation:(int64_t)self0 mirrored:(BOOL)self1;
@end

@implementation AXMGeometryUtilities

+ (CGRect)motionCorrectedNormalizedFrame:(CGRect)frame fromAttitude:(id)attitude fromFieldOfViewX:(float)x fromFieldOfViewY:(float)y toAttitude:(id)toAttitude toFieldOfViewX:(float)viewX toFieldOfViewY:(float)viewY interfaceOrientation:(int64_t)self0 mirrored:(BOOL)self1
{
  mirroredCopy = mirrored;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attitudeCopy = attitude;
  toAttitudeCopy = toAttitude;
  v24 = toAttitudeCopy;
  if (!attitudeCopy || !toAttitudeCopy || x == 0.0 || y == 0.0 || viewX == 0.0 || viewY == 0.0)
  {
    v25 = AXMediaLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [AXMGeometryUtilities motionCorrectedNormalizedFrame:v25 fromAttitude:? fromFieldOfViewX:? fromFieldOfViewY:? toAttitude:? toFieldOfViewX:? toFieldOfViewY:? interfaceOrientation:? mirrored:?];
    }
  }

  else
  {
    xCopy = x;
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    MidX = CGRectGetMidX(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    MidY = CGRectGetMidY(v71);
    v30 = [attitudeCopy copy];
    [v30 multiplyByInverseOfAttitude:v24];
    v31 = -1.0;
    if (mirroredCopy)
    {
      v31 = 1.0;
    }

    v69 = v31;
    v32 = tan(xCopy * 0.5 * 0.0174532925);
    v33 = tan(y * 0.5 * 0.0174532925);
    v34 = viewX == x;
    v35 = v32;
    if (!v34)
    {
      v36 = v33;
      v37 = tan(viewX * 0.5 * 0.0174532925);
      v33 = v36;
      v32 = v37;
    }

    v34 = viewY == y;
    v38 = v33;
    if (!v34)
    {
      v39 = v33;
      v40 = tan(viewY * 0.5 * 0.0174532925);
      v33 = v39;
      v38 = v40;
    }

    v41 = MidX + -0.5 + MidX + -0.5;
    v42 = MidY + -0.5 + MidY + -0.5;
    v43 = 0.0;
    if (orientation > 2)
    {
      if (orientation == 3)
      {
        v43 = -v42;
        v44 = -v41;
      }

      else
      {
        v44 = 0.0;
        if (orientation == 4)
        {
          v43 = MidY + -0.5 + MidY + -0.5;
          v44 = MidX + -0.5 + MidX + -0.5;
        }
      }
    }

    else
    {
      v44 = -v42;
      v45 = -v41;
      if (orientation != 2)
      {
        v45 = 0.0;
        v42 = 0.0;
      }

      if (orientation >= 2)
      {
        v43 = v45;
      }

      else
      {
        v43 = MidX + -0.5 + MidX + -0.5;
      }

      if (orientation >= 2)
      {
        v44 = v42;
      }
    }

    v68 = v35 * v43;
    v66 = v33 * v44;
    [v30 quaternion];
    v50.f64[0] = v48;
    v50.f64[1] = v49;
    v51.f64[0] = v46;
    v51.f64[1] = v47;
    v52 = vnegq_f64(v51);
    v53 = vmulq_f64(v50, xmmword_1AE451A40);
    v54 = vextq_s8(v53, vnegq_f64(v53), 8uLL);
    v55 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v51, v66), vextq_s8(v52, v51, 8uLL), v68), v54, v69);
    v56 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v53, v66), v54, v68), vextq_s8(v51, v52, 8uLL), v69);
    v57 = vnegq_f64(v56);
    v58 = vextq_s8(v55, vnegq_f64(v55), 8uLL);
    v59 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v55, v49), v58, v48), vmlaq_n_f64(vmulq_n_f64(v57, v47), vextq_s8(v56, v57, 8uLL), v46)).f64[0];
    if (v59 == 0.0)
    {
      v60 = 0uLL;
    }

    else
    {
      v60 = vmulq_n_f64(vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v56, v49), vextq_s8(v57, v56, 8uLL), v48), vmlaq_n_f64(vmulq_n_f64(v55, v47), v58, v46)), v69 / v59);
    }

    v61 = v60.f64[0] / v32;
    v60.f64[0] = 0.0;
    v62 = v60.f64[1] / v38;
    if (orientation > 2)
    {
      if (orientation == 3)
      {
        v60.f64[0] = -v62;
        v63 = -v61;
      }

      else
      {
        v63 = 0.0;
        if (orientation == 4)
        {
          v60.f64[0] = v60.f64[1] / v38;
          v63 = v61;
        }
      }
    }

    else if (orientation >= 2)
    {
      v63 = 0.0;
      if (orientation == 2)
      {
        v60.f64[0] = -v61;
        v63 = v60.f64[1] / v38;
      }
    }

    else
    {
      v63 = -v62;
      v60.f64[0] = v61;
    }

    x = v60.f64[0] * 0.5 + 0.5 - width * 0.5;
    y = v63 * 0.5 + 0.5 - height * 0.5;
  }

  xCopy2 = x;
  yCopy = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = yCopy;
  result.origin.x = xCopy2;
  return result;
}

@end