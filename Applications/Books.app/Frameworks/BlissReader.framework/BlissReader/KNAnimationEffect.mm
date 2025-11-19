@interface KNAnimationEffect
+ (id)defaultAttributes;
+ (id)updateDirectionAttributeValue:(int64_t)a3 andCustomTextDirectionValue:(unint64_t)a4 turnOffBounce:(BOOL)a5 forAttributes:(id)a6;
- (CATransform3D)mvpMatrixWithContext:(SEL)a3;
- (CATransform3D)mvpMatrixWithFrame:(SEL)a3 size:(CGPoint)a4;
- (CATransform3D)mvpMatrixWithTexture:(SEL)a3 andFrame:(id)a4;
- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)a3;
- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)a3 andFrame:(id)a4;
- (KNAnimationEffect)initWithAnimationContext:(id)a3;
@end

@implementation KNAnimationEffect

- (KNAnimationEffect)initWithAnimationContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = KNAnimationEffect;
  result = [(KNAnimationEffect *)&v5 init];
  if (result)
  {
    result->mAnimationContext = a3;
  }

  return result;
}

+ (id)defaultAttributes
{
  v3 = @"KNBuildAttributesDuration";
  v4 = &off_49DC08;
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

+ (id)updateDirectionAttributeValue:(int64_t)a3 andCustomTextDirectionValue:(unint64_t)a4 turnOffBounce:(BOOL)a5 forAttributes:(id)a6
{
  v7 = a5;
  v10 = [a6 mutableCopy];
  [v10 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", a3), @"KNBuildAttributesDirection"}];
  if (![a6 objectForKey:@"KNBuildCustomAttributesTextDelivery"])
  {
    [v10 setObject:&off_49D318 forKey:@"KNBuildCustomAttributesTextDelivery"];
  }

  [v10 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", a4), @"KNBuildCustomAttributesDeliveryOption"}];
  if (v7)
  {
    [v10 setObject:&__kCFBooleanFalse forKey:@"KNBuildCustomAttributesBounce"];
  }

  return v10;
}

- (CATransform3D)mvpMatrixWithContext:(SEL)a3
{
  if (![a4 isTransition])
  {
    v8 = [objc_msgSend(a4 "textures")];
    if ([a4 isMetalRenderer])
    {
      [(KNAnimationContext *)self->mAnimationContext slideRect];
    }

    else
    {
      result = [a4 drawableFrame];
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = [(KNAnimationEffect *)self mvpMatrixWithTexture:v8 andFrame:?];
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  result = [(CATransform3D *)result slideProjectionMatrix];
LABEL_9:
  *&retstr->m31 = v13;
  *&retstr->m33 = v14;
  *&retstr->m41 = v15;
  *&retstr->m43 = v16;
  *&retstr->m11 = v9;
  *&retstr->m13 = v10;
  *&retstr->m21 = v11;
  *&retstr->m23 = v12;
  return result;
}

- (CATransform3D)mvpMatrixWithFrame:(SEL)a3 size:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  TSDTransform3DMakeOrtho();
  v8 = *&retstr->m33;
  *&v17.m31 = *&retstr->m31;
  *&v17.m33 = v8;
  v9 = *&retstr->m43;
  *&v17.m41 = *&retstr->m41;
  *&v17.m43 = v9;
  v10 = *&retstr->m13;
  *&v17.m11 = *&retstr->m11;
  *&v17.m13 = v10;
  v11 = *&retstr->m23;
  *&v17.m21 = *&retstr->m21;
  *&v17.m23 = v11;
  result = CATransform3DTranslate(&v18, &v17, x, -y, 0.0);
  v13 = *&v18.m33;
  *&retstr->m31 = *&v18.m31;
  *&retstr->m33 = v13;
  v14 = *&v18.m43;
  *&retstr->m41 = *&v18.m41;
  *&retstr->m43 = v14;
  v15 = *&v18.m13;
  *&retstr->m11 = *&v18.m11;
  *&retstr->m13 = v15;
  v16 = *&v18.m23;
  *&retstr->m21 = *&v18.m21;
  *&retstr->m23 = v16;
  return result;
}

- (CATransform3D)mvpMatrixWithTexture:(SEL)a3 andFrame:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  TSDTransform3DMakeOrtho();
  [a4 frameOnCanvas];
  v12 = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v13 = v12 - CGRectGetMinX(v28);
  [a4 frameOnCanvas];
  v15 = v14;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxY = CGRectGetMaxY(v29);
  v17 = *&retstr->m33;
  *&v26.m31 = *&retstr->m31;
  *&v26.m33 = v17;
  v18 = *&retstr->m43;
  *&v26.m41 = *&retstr->m41;
  *&v26.m43 = v18;
  v19 = *&retstr->m13;
  *&v26.m11 = *&retstr->m11;
  *&v26.m13 = v19;
  v20 = *&retstr->m23;
  *&v26.m21 = *&retstr->m21;
  *&v26.m23 = v20;
  result = CATransform3DTranslate(&v27, &v26, v13, -(v15 - MaxY), 0.0);
  v22 = *&v27.m33;
  *&retstr->m31 = *&v27.m31;
  *&retstr->m33 = v22;
  v23 = *&v27.m43;
  *&retstr->m41 = *&v27.m41;
  *&retstr->m43 = v23;
  v24 = *&v27.m13;
  *&retstr->m11 = *&v27.m11;
  *&retstr->m13 = v24;
  v25 = *&v27.m23;
  *&retstr->m21 = *&v27.m21;
  *&retstr->m23 = v25;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)a3
{
  if (![a4 isTransition])
  {
    v8 = [objc_msgSend(a4 "textures")];
    if ([a4 isMetalRenderer])
    {
      [(KNAnimationContext *)self->mAnimationContext slideRect];
    }

    else
    {
      result = [a4 drawableFrame];
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = [(KNAnimationEffect *)self perspectiveMVPMatrixWithTexture:v8 andFrame:?];
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  result = [(CATransform3D *)result slideProjectionMatrix];
LABEL_9:
  *&retstr->m31 = v13;
  *&retstr->m33 = v14;
  *&retstr->m41 = v15;
  *&retstr->m43 = v16;
  *&retstr->m11 = v9;
  *&retstr->m13 = v10;
  *&retstr->m21 = v11;
  *&retstr->m23 = v12;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)a3 andFrame:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [a4 frameOnCanvas];
  v13 = v12;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v29 = v13 - CGRectGetMinX(v34);
  [a4 frameOnCanvas];
  v15 = v14;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v16 = v15 - CGRectGetMaxY(v35);
  [(KNAnimationContext *)self->mAnimationContext fieldOfViewInRadians];
  v18 = tan(v17 * 0.5);
  v19 = height / (v18 + v18);
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  [(KNAnimationContext *)self->mAnimationContext fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeTranslation(&v33, width * -0.5 - x + x + v29, height * -0.5 - y + y - v16, -v19);
  a = v33;
  v20 = *&retstr->m33;
  *&b.m31 = *&retstr->m31;
  *&b.m33 = v20;
  v21 = *&retstr->m43;
  *&b.m41 = *&retstr->m41;
  *&b.m43 = v21;
  v22 = *&retstr->m13;
  *&b.m11 = *&retstr->m11;
  *&b.m13 = v22;
  v23 = *&retstr->m23;
  *&b.m21 = *&retstr->m21;
  *&b.m23 = v23;
  result = CATransform3DConcat(&v32, &a, &b);
  v25 = *&v32.m33;
  *&retstr->m31 = *&v32.m31;
  *&retstr->m33 = v25;
  v26 = *&v32.m43;
  *&retstr->m41 = *&v32.m41;
  *&retstr->m43 = v26;
  v27 = *&v32.m13;
  *&retstr->m11 = *&v32.m11;
  *&retstr->m13 = v27;
  v28 = *&v32.m23;
  *&retstr->m21 = *&v32.m21;
  *&retstr->m23 = v28;
  return result;
}

@end