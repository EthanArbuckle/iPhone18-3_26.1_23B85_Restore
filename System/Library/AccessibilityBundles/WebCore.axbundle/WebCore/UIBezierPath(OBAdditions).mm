@interface UIBezierPath(OBAdditions)
- (__CFString)ax_descriptionForPathElement:()OBAdditions;
- (id)ax_description;
- (void)ax_enumerateElementsUsingBlock:()OBAdditions;
@end

@implementation UIBezierPath(OBAdditions)

- (void)ax_enumerateElementsUsingBlock:()OBAdditions
{
  selfCopy = self;
  info = a3;
  CGPathApply([self CGPath], info, CGPathEnumerationCallback);
}

- (id)ax_description
{
  cGPath = [self CGPath];
  PathBoundingBox = CGPathGetPathBoundingBox(cGPath);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  BoundingBox = CGPathGetBoundingBox(cGPath);
  v7 = BoundingBox.origin.x;
  v8 = BoundingBox.origin.y;
  v9 = BoundingBox.size.width;
  v10 = BoundingBox.size.height;
  string = [MEMORY[0x29EDBA050] string];
  [string appendFormat:@"%@ <%p>\n", objc_opt_class(), self];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v12 = NSStringFromCGRect(v23);
  [string appendFormat:@"  Bounds: %@\n", v12];

  v24.origin.x = v7;
  v24.origin.y = v8;
  v24.size.width = v9;
  v24.size.height = v10;
  v13 = NSStringFromCGRect(v24);
  [string appendFormat:@"  Control Point Bounds: %@\n", v13];

  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __43__UIBezierPath_OBAdditions__ax_description__block_invoke;
  v17[3] = &unk_29F31F758;
  v18 = string;
  selfCopy = self;
  v14 = string;
  [self ax_enumerateElementsUsingBlock:v17];
  v15 = [v14 copy];

  return v15;
}

- (__CFString)ax_descriptionForPathElement:()OBAdditions
{
  v3 = *a3;
  if (*a3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        v4 = 0;
        goto LABEL_15;
      }

      v5 = *(a3 + 8);
      v6 = *v5;
      v7 = v5[1];
      v8 = MEMORY[0x29EDBA0F8];
      v9 = @"lineto";
    }

    else
    {
      v11 = *(a3 + 8);
      v6 = *v11;
      v7 = v11[1];
      v8 = MEMORY[0x29EDBA0F8];
      v9 = @"moveto";
    }

    [v8 stringWithFormat:@"%f %f %@", v6, v7, v9, v13, v14, v15, v16];
    v4 = LABEL_14:;
    goto LABEL_15;
  }

  switch(v3)
  {
    case 2:
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%f %f %f %f %@", **(a3 + 8), *(*(a3 + 8) + 8), *(*(a3 + 8) + 16), *(*(a3 + 8) + 24), @"quadcurveto", v15, v16];
      goto LABEL_14;
    case 3:
      v10 = *(a3 + 8);
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%f %f %f %f %f %f %@", *v10, v10[1], v10[2], v10[3], v10[4], v10[5], @"curveto"];
      goto LABEL_14;
    case 4:
      v4 = @"closepath";
      break;
    default:
      v4 = 0;
      break;
  }

LABEL_15:

  return v4;
}

@end