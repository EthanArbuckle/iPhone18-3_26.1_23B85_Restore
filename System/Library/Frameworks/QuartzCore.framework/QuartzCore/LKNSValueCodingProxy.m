@interface LKNSValueCodingProxy
- (LKNSValueCodingProxy)initWithCoder:(id)a3;
- (LKNSValueCodingProxy)initWithObject:(id)a3;
- (id)decodedObject;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LKNSValueCodingProxy

- (id)decodedObject
{
  v2 = 0;
  v39 = *MEMORY[0x1E69E9840];
  kind = self->_kind;
  if (kind > 7)
  {
    if (kind > 9)
    {
      if (kind == 10)
      {
        p_u = &self->_u;
        v30 = MEMORY[0x1E696B098];

        return [v30 valueWithBytes:p_u objCType:"{CGAffineTransform=dddddd}"];
      }

      if (kind != 11)
      {
        return v2;
      }

      v15 = *&self->_u.affine_transform.c;
      point = self->_u.point;
      v32 = v15;
      v16 = *(&self->_u.affine_transform + 3);
      v33 = *&self->_u.affine_transform.tx;
      v34 = v16;
      return [MEMORY[0x1E696B098] valueWithCACornerRadii:&point];
    }

    else
    {
      if (kind == 8)
      {
        x = self->_u.point.x;
        y = self->_u.point.y;
        width = self->_u.rect.size.width;
        v23 = MEMORY[0x1E696B098];

        return [v23 valueWithCAPoint3D:{x, y, width}];
      }

      v8 = *(&self->_u.affine_transform + 3);
      v33 = *&self->_u.affine_transform.tx;
      v34 = v8;
      v35 = *(&self->_u.affine_transform + 4);
      v9 = *&self->_u.affine_transform.c;
      point = self->_u.point;
      v32 = v9;
      return [MEMORY[0x1E696B098] valueWithCAColorMatrix:&point];
    }
  }

  if (kind > 1)
  {
    if (kind == 2)
    {
      v24 = self->_u.point.x;
      v25 = self->_u.point.y;
      v26 = self->_u.rect.size.width;
      height = self->_u.rect.size.height;
      v28 = MEMORY[0x1E696B098];

      return [v28 valueWithRect:{v24, v25, v26, height}];
    }

    if (kind != 3)
    {
      return v2;
    }

    v11 = *(&self->_u.affine_transform + 5);
    v35 = *(&self->_u.affine_transform + 4);
    v36 = v11;
    v12 = *(&self->_u.affine_transform + 7);
    v37 = *(&self->_u.affine_transform + 6);
    v38 = v12;
    v13 = *&self->_u.affine_transform.c;
    point = self->_u.point;
    v32 = v13;
    v14 = *(&self->_u.affine_transform + 3);
    v33 = *&self->_u.affine_transform.tx;
    v34 = v14;
    return [MEMORY[0x1E696B098] valueWithCATransform3D:&point];
  }

  if (kind)
  {
    if (kind == 1)
    {
      v4 = self->_u.point.x;
      v5 = self->_u.point.y;
      v6 = MEMORY[0x1E696B098];

      return [v6 valueWithSize:{v4, v5}];
    }

    return v2;
  }

  v17 = self->_u.point.x;
  v18 = self->_u.point.y;
  v19 = MEMORY[0x1E696B098];

  return [v19 valueWithPoint:{v17, v18}];
}

- (LKNSValueCodingProxy)initWithCoder:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v80.receiver = self;
  v80.super_class = LKNSValueCodingProxy;
  v4 = [(LKNSValueCodingProxy *)&v80 init];
  if (v4)
  {
    v5 = [a3 decodeIntForKey:@"kind"];
    v4->_kind = v5;
    if (v5 <= 5)
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v5 != 1)
          {
            return v4;
          }

          [a3 decodeFloatForKey:@"width"];
          p_u = &v4->_u;
          v4->_u.point.x = v19;
          v21 = @"height";
        }

        else
        {
          [a3 decodeFloatForKey:@"x"];
          p_u = &v4->_u;
          v4->_u.point.x = v22;
          v21 = @"y";
        }

        [a3 decodeFloatForKey:v21];
        p_u->point.y = v23;
        return v4;
      }

      switch(v5)
      {
        case 2:
          [a3 decodeFloatForKey:@"x"];
          v4->_u.point.x = v51;
          [a3 decodeFloatForKey:@"y"];
          v4->_u.point.y = v52;
          [a3 decodeFloatForKey:@"width"];
          v4->_u.rect.size.width = v53;
          [a3 decodeFloatForKey:@"height"];
          v4->_u.rect.size.height = v54;
          break;
        case 3:
          if ([a3 containsValueForKey:@"m11"])
          {
            [a3 decodeFloatForKey:@"m11"];
            v4->_u.point.x = v24;
            [a3 decodeFloatForKey:@"m12"];
            v4->_u.point.y = v25;
            [a3 decodeFloatForKey:@"m13"];
            v4->_u.rect.size.width = v26;
            [a3 decodeFloatForKey:@"m14"];
            v4->_u.rect.size.height = v27;
            [a3 decodeFloatForKey:@"m21"];
            v4->_u.transform.m21 = v28;
            [a3 decodeFloatForKey:@"m22"];
            v4->_u.transform.m22 = v29;
            [a3 decodeFloatForKey:@"m23"];
            v4->_u.transform.m23 = v30;
            [a3 decodeFloatForKey:@"m24"];
            v4->_u.transform.m24 = v31;
            [a3 decodeFloatForKey:@"m31"];
            v4->_u.transform.m31 = v32;
            [a3 decodeFloatForKey:@"m32"];
            v4->_u.transform.m32 = v33;
            [a3 decodeFloatForKey:@"m33"];
            v4->_u.transform.m33 = v34;
            [a3 decodeFloatForKey:@"m34"];
            v4->_u.transform.m34 = v35;
            [a3 decodeFloatForKey:@"m41"];
            v4->_u.transform.m41 = v36;
            [a3 decodeFloatForKey:@"m42"];
            v4->_u.transform.m42 = v37;
            [a3 decodeFloatForKey:@"m43"];
            v4->_u.transform.m43 = v38;
            [a3 decodeFloatForKey:@"m44"];
            v4->_u.transform.m44 = v39;
          }

          else
          {
            v4->_u.transform = CATransform3DIdentity;
          }

          break;
        case 5:
          [a3 decodeDoubleForKey:@"x"];
          v4->_u.point.x = v9;
          [a3 decodeDoubleForKey:@"y"];
          v4->_u.point.y = v10;
          v4->_kind = 0;
          break;
      }
    }

    else
    {
      if (v5 <= 8)
      {
        if (v5 == 6)
        {
          [a3 decodeDoubleForKey:@"width"];
          v4->_u.point.x = v55;
          [a3 decodeDoubleForKey:@"height"];
          v4->_u.point.y = v56;
          v44 = 1;
        }

        else
        {
          if (v5 != 7)
          {
            [a3 decodeFloatForKey:@"x"];
            v4->_u.point.x = v6;
            [a3 decodeFloatForKey:@"y"];
            v4->_u.point.y = v7;
            [a3 decodeFloatForKey:@"z"];
            v4->_u.rect.size.width = v8;
            return v4;
          }

          [a3 decodeDoubleForKey:@"x"];
          v4->_u.point.x = v40;
          [a3 decodeDoubleForKey:@"y"];
          v4->_u.point.y = v41;
          [a3 decodeDoubleForKey:@"width"];
          v4->_u.rect.size.width = v42;
          [a3 decodeDoubleForKey:@"height"];
          v4->_u.rect.size.height = v43;
          v44 = 2;
        }

        v4->_kind = v44;
        return v4;
      }

      switch(v5)
      {
        case 9:
          [a3 decodeFloatForKey:@"m11"];
          v4->_u.color_matrix.m11 = v57;
          [a3 decodeFloatForKey:@"m12"];
          v4->_u.color_matrix.m12 = v58;
          [a3 decodeFloatForKey:@"m13"];
          v4->_u.color_matrix.m13 = v59;
          [a3 decodeFloatForKey:@"m14"];
          v4->_u.color_matrix.m14 = v60;
          [a3 decodeFloatForKey:@"m15"];
          v4->_u.color_matrix.m15 = v61;
          [a3 decodeFloatForKey:@"m21"];
          v4->_u.color_matrix.m21 = v62;
          [a3 decodeFloatForKey:@"m22"];
          v4->_u.color_matrix.m22 = v63;
          [a3 decodeFloatForKey:@"m23"];
          v4->_u.color_matrix.m23 = v64;
          [a3 decodeFloatForKey:@"m24"];
          v4->_u.color_matrix.m24 = v65;
          [a3 decodeFloatForKey:@"m25"];
          v4->_u.color_matrix.m25 = v66;
          [a3 decodeFloatForKey:@"m31"];
          v4->_u.color_matrix.m31 = v67;
          [a3 decodeFloatForKey:@"m32"];
          v4->_u.color_matrix.m32 = v68;
          [a3 decodeFloatForKey:@"m33"];
          v4->_u.color_matrix.m33 = v69;
          [a3 decodeFloatForKey:@"m34"];
          v4->_u.color_matrix.m34 = v70;
          [a3 decodeFloatForKey:@"m35"];
          v4->_u.color_matrix.m35 = v71;
          [a3 decodeFloatForKey:@"m41"];
          v4->_u.color_matrix.m41 = v72;
          [a3 decodeFloatForKey:@"m42"];
          v4->_u.color_matrix.m42 = v73;
          [a3 decodeFloatForKey:@"m43"];
          v4->_u.color_matrix.m43 = v74;
          [a3 decodeFloatForKey:@"m44"];
          v4->_u.color_matrix.m44 = v75;
          [a3 decodeFloatForKey:@"m45"];
          v4->_u.color_matrix.m45 = v76;
          break;
        case 10:
          if ([a3 containsValueForKey:@"a"])
          {
            [a3 decodeFloatForKey:@"a"];
            v4->_u.point.x = v45;
            [a3 decodeFloatForKey:@"b"];
            v4->_u.point.y = v46;
            [a3 decodeFloatForKey:@"c"];
            v4->_u.rect.size.width = v47;
            [a3 decodeFloatForKey:@"d"];
            v4->_u.rect.size.height = v48;
            [a3 decodeFloatForKey:@"tx"];
            v4->_u.transform.m21 = v49;
            [a3 decodeFloatForKey:@"ty"];
            v4->_u.transform.m22 = v50;
          }

          else
          {
            v78 = *(MEMORY[0x1E695EFD0] + 16);
            v77 = *(MEMORY[0x1E695EFD0] + 32);
            v4->_u.point = *MEMORY[0x1E695EFD0];
            *&v4->_u.affine_transform.c = v78;
            *&v4->_u.affine_transform.tx = v77;
          }

          break;
        case 11:
          [a3 decodeFloatForKey:@"min_max_w"];
          v4->_u.point.x = v11;
          [a3 decodeFloatForKey:@"min_max_h"];
          v4->_u.point.y = v12;
          [a3 decodeFloatForKey:@"max_max_w"];
          v4->_u.rect.size.width = v13;
          [a3 decodeFloatForKey:@"max_max_h"];
          v4->_u.rect.size.height = v14;
          [a3 decodeFloatForKey:@"max_min_w"];
          v4->_u.transform.m21 = v15;
          [a3 decodeFloatForKey:@"max_min_h"];
          v4->_u.transform.m22 = v16;
          [a3 decodeFloatForKey:@"min_min_w"];
          v4->_u.transform.m23 = v17;
          [a3 decodeFloatForKey:@"min_min_h"];
          v4->_u.transform.m24 = v18;
          break;
      }
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  [a3 encodeInt:self->_kind forKey:@"kind"];
  kind = self->_kind;
  if (kind > 7)
  {
    if (kind <= 9)
    {
      p_u = &self->_u;
      if (kind == 8)
      {
        x = p_u->point.x;
        *&x = p_u->point.x;
        [a3 encodeFloat:@"x" forKey:x];
        y = p_u->point.y;
        *&y = y;
        [a3 encodeFloat:@"y" forKey:y];
        width = p_u->rect.size.width;
        *&width = width;
        v29 = @"z";
      }

      else
      {
        *&v5 = p_u->color_matrix.m11;
        [a3 encodeFloat:@"m11" forKey:v5];
        *&v11 = p_u->color_matrix.m12;
        [a3 encodeFloat:@"m12" forKey:v11];
        *&v12 = p_u->color_matrix.m13;
        [a3 encodeFloat:@"m13" forKey:v12];
        *&v13 = p_u->color_matrix.m14;
        [a3 encodeFloat:@"m14" forKey:v13];
        *&v14 = p_u->color_matrix.m15;
        [a3 encodeFloat:@"m15" forKey:v14];
        *&v15 = p_u->color_matrix.m21;
        [a3 encodeFloat:@"m21" forKey:v15];
        *&v16 = p_u->color_matrix.m22;
        [a3 encodeFloat:@"m22" forKey:v16];
        *&v17 = p_u->color_matrix.m23;
        [a3 encodeFloat:@"m23" forKey:v17];
        *&v18 = p_u->color_matrix.m24;
        [a3 encodeFloat:@"m24" forKey:v18];
        *&v19 = p_u->color_matrix.m25;
        [a3 encodeFloat:@"m25" forKey:v19];
        *&v20 = p_u->color_matrix.m31;
        [a3 encodeFloat:@"m31" forKey:v20];
        *&v21 = p_u->color_matrix.m32;
        [a3 encodeFloat:@"m32" forKey:v21];
        *&v22 = p_u->color_matrix.m33;
        [a3 encodeFloat:@"m33" forKey:v22];
        *&v23 = p_u->color_matrix.m34;
        [a3 encodeFloat:@"m34" forKey:v23];
        *&v24 = p_u->color_matrix.m35;
        [a3 encodeFloat:@"m35" forKey:v24];
        *&v25 = p_u->color_matrix.m41;
        [a3 encodeFloat:@"m41" forKey:v25];
        *&v26 = p_u->color_matrix.m42;
        [a3 encodeFloat:@"m42" forKey:v26];
        *&v27 = p_u->color_matrix.m43;
        [a3 encodeFloat:@"m43" forKey:v27];
        *&v28 = p_u->color_matrix.m44;
        [a3 encodeFloat:@"m44" forKey:v28];
        *&width = p_u->color_matrix.m45;
        v29 = @"m45";
      }

      goto LABEL_20;
    }

    if (kind != 10)
    {
      if (kind != 11)
      {
        return;
      }

      v46 = &self->_u;
      v47 = v46->point.x;
      *&v47 = v46->point.x;
      [a3 encodeFloat:@"min_max_w" forKey:v47];
      v48 = v46->point.y;
      *&v48 = v48;
      [a3 encodeFloat:@"min_max_h" forKey:v48];
      v49 = v46->rect.size.width;
      *&v49 = v49;
      [a3 encodeFloat:@"max_max_w" forKey:v49];
      height = v46->rect.size.height;
      *&height = height;
      [a3 encodeFloat:@"max_max_h" forKey:height];
      m21 = v46->transform.m21;
      *&m21 = m21;
      [a3 encodeFloat:@"max_min_w" forKey:m21];
      m22 = v46->transform.m22;
      *&m22 = m22;
      [a3 encodeFloat:@"max_min_h" forKey:m22];
      m23 = v46->transform.m23;
      *&m23 = m23;
      [a3 encodeFloat:@"min_min_w" forKey:m23];
      width = v46->transform.m24;
      *&width = width;
      v29 = @"min_min_h";
      goto LABEL_20;
    }

    v62 = &self->_u;
    v63 = *&v62->affine_transform.c;
    *&v74.a = v62->point;
    *&v74.c = v63;
    *&v74.tx = *&v62->affine_transform.tx;
    if (!CGAffineTransformIsIdentity(&v74))
    {
      v64 = v62->point.x;
      *&v64 = v62->point.x;
      [a3 encodeFloat:@"a" forKey:v64];
      v65 = v62->point.y;
      *&v65 = v65;
      [a3 encodeFloat:@"b" forKey:v65];
      v66 = v62->rect.size.width;
      *&v66 = v66;
      [a3 encodeFloat:@"c" forKey:v66];
      v67 = v62->rect.size.height;
      *&v67 = v67;
      [a3 encodeFloat:@"d" forKey:v67];
      v68 = v62->transform.m21;
      *&v68 = v68;
      [a3 encodeFloat:@"tx" forKey:v68];
      v69 = v62->transform.m22;
      *&v69 = v69;
      [a3 encodeFloat:@"ty" forKey:v69];
    }
  }

  else
  {
    if (kind <= 1)
    {
      if (kind)
      {
        if (kind != 1)
        {
          return;
        }

        v7 = &self->_u;
        v8 = v7->point.x;
        *&v8 = v7->point.x;
        [a3 encodeFloat:@"width" forKey:v8];
        width = v7->point.y;
        goto LABEL_19;
      }

      v54 = &self->_u;
      v55 = v54->point.x;
      *&v55 = v54->point.x;
      [a3 encodeFloat:@"x" forKey:v55];
      width = v54->point.y;
      *&width = width;
      v29 = @"y";
LABEL_20:

      [a3 encodeFloat:v29 forKey:width];
      return;
    }

    if (kind == 2)
    {
      v58 = &self->_u;
      v59 = v58->point.x;
      *&v59 = v58->point.x;
      [a3 encodeFloat:@"x" forKey:v59];
      v60 = v58->point.y;
      *&v60 = v60;
      [a3 encodeFloat:@"y" forKey:v60];
      v61 = v58->rect.size.width;
      *&v61 = v61;
      [a3 encodeFloat:@"width" forKey:v61];
      width = v58->rect.size.height;
LABEL_19:
      *&width = width;
      v29 = @"height";
      goto LABEL_20;
    }

    if (kind != 3)
    {
      return;
    }

    v30 = &self->_u;
    v31 = v30->point.x;
    if (v30->point.x != 1.0)
    {
LABEL_12:
      *&v31 = v31;
      [a3 encodeFloat:@"m11" forKey:v31];
      v32 = v30->point.y;
      *&v32 = v32;
      [a3 encodeFloat:@"m12" forKey:v32];
      v33 = v30->rect.size.width;
      *&v33 = v33;
      [a3 encodeFloat:@"m13" forKey:v33];
      v34 = v30->rect.size.height;
      *&v34 = v34;
      [a3 encodeFloat:@"m14" forKey:v34];
      v35 = v30->transform.m21;
      *&v35 = v35;
      [a3 encodeFloat:@"m21" forKey:v35];
      v36 = v30->transform.m22;
      *&v36 = v36;
      [a3 encodeFloat:@"m22" forKey:v36];
      v37 = v30->transform.m23;
      *&v37 = v37;
      [a3 encodeFloat:@"m23" forKey:v37];
      m24 = v30->transform.m24;
      *&m24 = m24;
      [a3 encodeFloat:@"m24" forKey:m24];
      m31 = v30->transform.m31;
      *&m31 = m31;
      [a3 encodeFloat:@"m31" forKey:m31];
      m32 = v30->transform.m32;
      *&m32 = m32;
      [a3 encodeFloat:@"m32" forKey:m32];
      m33 = v30->transform.m33;
      *&m33 = m33;
      [a3 encodeFloat:@"m33" forKey:m33];
      m34 = v30->transform.m34;
      *&m34 = m34;
      [a3 encodeFloat:@"m34" forKey:m34];
      m41 = v30->transform.m41;
      *&m41 = m41;
      [a3 encodeFloat:@"m41" forKey:m41];
      m42 = v30->transform.m42;
      *&m42 = m42;
      [a3 encodeFloat:@"m42" forKey:m42];
      m43 = v30->transform.m43;
      *&m43 = m43;
      [a3 encodeFloat:@"m43" forKey:m43];
      width = v30->transform.m44;
      *&width = width;
      v29 = @"m44";
      goto LABEL_20;
    }

    v70 = 1;
    while (v70 != 16)
    {
      v71 = v70;
      v72 = *(&v30->point.x + v70);
      v73 = *(&CATransform3DIdentity.m11 + v70++);
      if (v72 != v73)
      {
        if ((v71 - 1) <= 0xE)
        {
          goto LABEL_12;
        }

        return;
      }
    }
  }
}

- (LKNSValueCodingProxy)initWithObject:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = LKNSValueCodingProxy;
  v4 = [(LKNSValueCodingProxy *)&v34 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [a3 objCType];
  v6 = v5;
  if (v5)
  {
    if (!strcmp(v5, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      v4->_kind = 2;
      [a3 rectValue];
      v4->_u.point.x = v10;
      v4->_u.point.y = v11;
      v4->_u.rect.size.width = v12;
      v4->_u.rect.size.height = v13;
      return v4;
    }

    if (!strcmp(v6, "{CGPoint=dd}"))
    {
      v4->_kind = 0;
      [a3 pointValue];
    }

    else
    {
      if (strcmp(v6, "{CGSize=dd}"))
      {
        if (!strcmp(v6, "{CATransform3D=dddddddddddddddd}"))
        {
          v4->_kind = 3;
          if (a3)
          {
            [a3 CATransform3DValue];
          }

          else
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            *buf = 0u;
            v36 = 0u;
          }

          v22 = v38;
          v24 = *buf;
          v23 = v36;
          *&v4->_u.affine_transform.tx = v37;
          *(&v4->_u.affine_transform + 3) = v22;
          v4->_u.point = v24;
          *&v4->_u.affine_transform.c = v23;
          v25 = v42;
          v27 = v39;
          v26 = v40;
          *(&v4->_u.affine_transform + 6) = v41;
          *(&v4->_u.affine_transform + 7) = v25;
          *(&v4->_u.affine_transform + 4) = v27;
          *(&v4->_u.affine_transform + 5) = v26;
          return v4;
        }

        if (!strcmp(v6, "{CAPoint3D=ddd}"))
        {
          v4->_kind = 8;
          [a3 CAPoint3DValue];
          v4->_u.point.x = v19;
          v4->_u.point.y = v20;
          v4->_u.rect.size.width = v21;
          return v4;
        }

        if (!strcmp(v6, "{CACornerRadii={CGSize=dd}{CGSize=dd}{CGSize=dd}{CGSize=dd}}"))
        {
          v4->_kind = 11;
          if (a3)
          {
            [a3 CACornerRadiiValue];
          }

          else
          {
            v37 = 0u;
            v38 = 0u;
            *buf = 0u;
            v36 = 0u;
          }

          v28 = v38;
          v30 = *buf;
          v29 = v36;
          *&v4->_u.affine_transform.tx = v37;
          *(&v4->_u.affine_transform + 3) = v28;
          v4->_u.point = v30;
          *&v4->_u.affine_transform.c = v29;
          return v4;
        }

        if (strcmp(v6, "{CAColorMatrix=ffffffffffffffffffff}"))
        {
          v7 = strcmp(v6, "{CGAffineTransform=dddddd}");
          p_kind = &v4->_kind;
          if (!v7)
          {
            *p_kind = 10;
            if (a3)
            {
              [a3 CA_CGAffineTransformValue];
            }

            else
            {
              v36 = 0u;
              v37 = 0u;
              *buf = 0u;
            }

            v32 = v36;
            v31 = v37;
            v4->_u.point = *buf;
            *&v4->_u.affine_transform.c = v32;
            *&v4->_u.affine_transform.tx = v31;
            return v4;
          }

          goto LABEL_15;
        }

LABEL_20:
        v4->_kind = 9;
        if (a3)
        {
          [a3 CAColorMatrixValue];
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *buf = 0u;
        }

        v4->_u.point = *buf;
        v16 = v39;
        v18 = v36;
        v17 = v37;
        *(&v4->_u.affine_transform + 3) = v38;
        *(&v4->_u.affine_transform + 4) = v16;
        *&v4->_u.affine_transform.c = v18;
        *&v4->_u.affine_transform.tx = v17;
        return v4;
      }

      v4->_kind = 1;
      [a3 sizeValue];
    }

    v4->_u.point.x = v14;
    v4->_u.point.y = v15;
    return v4;
  }

  if (!strcmp(0, "{CAColorMatrix=ffffffffffffffffffff}"))
  {
    goto LABEL_20;
  }

  p_kind = &v4->_kind;
LABEL_15:
  *p_kind = 4;
  if (x_log_get_utilities::once != -1)
  {
    dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
  }

  v9 = x_log_get_utilities::log;
  if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "unable to encode NSValue of type %s", buf, 0xCu);
  }

  return v4;
}

@end