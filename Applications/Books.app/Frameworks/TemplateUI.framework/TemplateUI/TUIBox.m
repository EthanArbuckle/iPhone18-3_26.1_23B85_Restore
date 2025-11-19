@interface TUIBox
+ (id)blendModeFromString:(id)a3;
+ (id)layerContentsGravityFromString:(id)a3;
+ (id)videoGravityFromString:(id)a3;
+ (int64_t)imageRenderingModeFromString:(id)a3;
+ (int64_t)textAlignmentFromString:(id)a3;
+ (unint64_t)anchorPositionFromString:(id)a3;
+ (unint64_t)axisFromString:(id)a3;
+ (unint64_t)compressedFromString:(id)a3;
+ (unint64_t)halignFromString:(id)a3;
+ (unint64_t)interfaceLayoutDirectionFromString:(id)a3;
+ (unint64_t)layoutModeFromString:(id)a3;
+ (unint64_t)liveTransformFromString:(id)a3;
+ (unint64_t)renderModelFromString:(id)a3;
+ (unint64_t)roleFromString:(id)a3;
+ (unint64_t)triggerStateFromString:(id)a3;
+ (unint64_t)userInterfaceStyleFromString:(id)a3;
+ (unint64_t)valignFromString:(id)a3;
+ (void)initialize;
- ($E297CC25127479E857BE23A4F8632EA4)height;
- ($E297CC25127479E857BE23A4F8632EA4)relativeWidth;
- ($E297CC25127479E857BE23A4F8632EA4)width;
- (BOOL)axHasNonDefaultAttributess;
- (CGAffineTransform)renderTransform;
- (CGAffineTransform)transform;
- (NSArray)axCustomActions;
- (NSString)axHint;
- (NSString)axLabel;
- (NSString)axValue;
- (NSString)description;
- (NSString)refId;
- (NSString)refInstance;
- (TUIAnimationGroupCollection)animationGroups;
- (TUIBox)init;
- (TUIGridCoord)gridCoord;
- (TUIGuides)guides;
- (TUIImpressionData)impressionData;
- (TUIModelContaining)parentModel;
- (UIEdgeInsets)renderOutsets;
- (id).cxx_construct;
- (int64_t)zIndex;
- (void)setAXElement:(BOOL)a3;
- (void)setAxAdjustable:(BOOL)a3;
- (void)setAxButton:(BOOL)a3;
- (void)setAxDisabled:(BOOL)a3;
- (void)setAxHeading:(BOOL)a3;
- (void)setAxHint:(id)a3;
- (void)setAxImage:(BOOL)a3;
- (void)setAxLabel:(id)a3;
- (void)setAxStaticText:(BOOL)a3;
- (void)setAxTouchContainer:(BOOL)a3;
- (void)setAxValue:(id)a3;
- (void)setGrouped:(BOOL)a3;
- (void)setHeight:(id *)a3;
- (void)setInheritHeight:(BOOL)a3;
- (void)setInheritWidth:(BOOL)a3;
- (void)setRelativeWidth:(id *)a3;
- (void)setRenderOutsets:(UIEdgeInsets)a3;
- (void)setRenderTransform:(CGAffineTransform *)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setWidth:(id *)a3;
- (void)setZIndex:(int64_t)a3;
@end

@implementation TUIBox

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (qword_2E6A30[0] != -1)
    {
      sub_19C250();
    }

    v2 = [qword_2E6A28 bytes];
    v3 = v2[1];
    if (v3)
    {
      v4 = v2;
      v5 = 0;
      v6 = (v2 + 2);
      while (strcmp("box", &v4[*&v6[v5]]))
      {
        v5 += 4;
        if (4 * v3 == v5)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v7 = &v4[*&v6[4 * v3 + v5]];
LABEL_11:
      v9 = 0;
      TUIBoxStorageDataset = v7;
      while (strcmp("imagebox", &v4[*&v6[4 * v9]]))
      {
        if (v3 == ++v9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = &v4[*&v6[4 * v3 + 4 * v9]];
LABEL_16:
      v11 = 0;
      TUIImageBoxStorageDataset = v10;
      while (strcmp("vbox", &v4[*&v6[4 * v11]]))
      {
        if (v3 == ++v11)
        {
          v12 = 0;
          goto LABEL_21;
        }
      }

      v12 = &v4[*&v6[4 * v3 + 4 * v11]];
LABEL_21:
      v13 = 0;
      TUIVBoxStorageDataset = v12;
      while (strcmp("progressbox", &v4[*&v6[4 * v13]]))
      {
        if (v3 == ++v13)
        {
          v14 = 0;
          goto LABEL_26;
        }
      }

      v14 = &v4[*&v6[4 * v3 + 4 * v13]];
LABEL_26:
      v15 = 0;
      TUIProgressBoxStorageDataset = v14;
      while (strcmp("statefulelementbox", &v4[*&v6[4 * v15]]))
      {
        if (v3 == ++v15)
        {
          v16 = 0;
          goto LABEL_31;
        }
      }

      v16 = &v4[*&v6[4 * v3 + 4 * v15]];
LABEL_31:
      v17 = 0;
      TUIStatefulElementBoxStorageDataset = v16;
      while (strcmp("ratingsbox", &v4[*&v6[4 * v17]]))
      {
        if (v3 == ++v17)
        {
          v18 = 0;
          goto LABEL_36;
        }
      }

      v18 = &v4[*&v6[4 * v3 + 4 * v17]];
LABEL_36:
      v19 = 0;
      TUIRatingsBoxStorageDataset = v18;
      while (strcmp("styledbox", &v4[*&v6[4 * v19]]))
      {
        if (v3 == ++v19)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = &v4[*&v6[4 * v3 + 4 * v19]];
LABEL_41:
      v21 = 0;
      TUIStyledBoxStorageDataset = v20;
      while (strcmp("wpbox", &v4[*&v6[4 * v21]]))
      {
        if (v3 == ++v21)
        {
          v8 = 0;
          goto LABEL_46;
        }
      }

      v8 = &v4[*&v6[4 * v3 + 4 * v21]];
    }

    else
    {
      v8 = 0;
      TUIBoxStorageDataset = 0;
      TUIImageBoxStorageDataset = 0;
      TUIVBoxStorageDataset = 0;
      TUIProgressBoxStorageDataset = 0;
      TUIStatefulElementBoxStorageDataset = 0;
      TUIRatingsBoxStorageDataset = 0;
      TUIStyledBoxStorageDataset = 0;
    }

LABEL_46:
    TUIWPBoxStorageDataset = v8;
  }
}

- (TUIBox)init
{
  v3.receiver = self;
  v3.super_class = TUIBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    result->_storage._data = TUIBoxStorageDataset | 1;
  }

  return result;
}

- ($E297CC25127479E857BE23A4F8632EA4)width
{
  v3 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0);
  v4 = &TUILengthNull;
  if (v3)
  {
    v4 = v3;
  }

  return *v4;
}

- (void)setWidth:(id *)a3
{
  v4 = v3;
  if ((v3 & 0x7000000000000) == 0x2000000000000)
  {
    v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0);
    if (!v7)
    {
      return;
    }

    DataForKey = v7;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = a3;
  DataForKey[1] = v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)relativeWidth
{
  v3 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x22u);
  v4 = &TUILengthNull;
  if (v3)
  {
    v4 = v3;
  }

  return *v4;
}

- (void)setRelativeWidth:(id *)a3
{
  v4 = v3;
  if ((v3 & 0x7000000000000) == 0x2000000000000)
  {
    v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x22u);
    if (!v7)
    {
      return;
    }

    DataForKey = v7;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0x22u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0x22u, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = a3;
  DataForKey[1] = v4;
}

- ($E297CC25127479E857BE23A4F8632EA4)height
{
  v3 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 8u);
  v4 = &TUILengthNull;
  if (v3)
  {
    v4 = v3;
  }

  return *v4;
}

- (void)setHeight:(id *)a3
{
  v4 = v3;
  if ((v3 & 0x7000000000000) == 0x2000000000000)
  {
    v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 8u);
    if (!v7)
    {
      return;
    }

    DataForKey = v7;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 8u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 8u, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = a3;
  DataForKey[1] = v4;
}

- (CGAffineTransform)transform
{
  result = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x28u);
  v5 = &TUIAffineTransform32Identity;
  if (result)
  {
    v5 = result;
  }

  v6 = vcvtq_f64_f32(v5[1]);
  *&retstr->a = vcvtq_f64_f32(*v5);
  *&retstr->c = v6;
  *&retstr->tx = vcvtq_f64_f32(v5[2]);
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v4 = vcvt_f32_f64(*&a3->tx);
  v7 = vcvt_f32_f64(*&a3->a);
  v8 = *&a3->c;
  v9 = vcvt_hight_f32_f64(v7, v8);
  v10 = v4;
  if (TUIAffineTransform32IsIdentity(v9.f32))
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x28u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0x28u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0x28u, 0x18uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = v7;
  DataForKey[1] = vcvt_f32_f64(v8);
  DataForKey[2] = v4;
}

- (CGAffineTransform)renderTransform
{
  result = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x2Au);
  v5 = &TUIAffineTransform32Identity;
  if (result)
  {
    v5 = result;
  }

  v6 = vcvtq_f64_f32(v5[1]);
  *&retstr->a = vcvtq_f64_f32(*v5);
  *&retstr->c = v6;
  *&retstr->tx = vcvtq_f64_f32(v5[2]);
  return result;
}

- (void)setRenderTransform:(CGAffineTransform *)a3
{
  v4 = vcvt_f32_f64(*&a3->tx);
  v7 = vcvt_f32_f64(*&a3->a);
  v8 = *&a3->c;
  v9 = vcvt_hight_f32_f64(v7, v8);
  v10 = v4;
  if (TUIAffineTransform32IsIdentity(v9.f32))
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x2Au);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0x2Au);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0x2Au, 0x18uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = v7;
  DataForKey[1] = vcvt_f32_f64(v8);
  DataForKey[2] = v4;
}

- (int64_t)zIndex
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x17u);
  if (v2 && *v2 != 0x7FFFFFFF)
  {
    return *v2;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setZIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = a3;
  }

  if (v4 == 0x7FFFFFFF)
  {
    v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x17u);
    if (!v5)
    {
      return;
    }

    DataForKey = v5;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0x17u);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0x17u, 4uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = v4;
}

- (UIEdgeInsets)renderOutsets
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x1Du);
  v3 = &TUIInsets32Zero;
  if (v2)
  {
    v3 = v2;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setRenderOutsets:(UIEdgeInsets)a3
{
  top = a3.top;
  left = a3.left;
  bottom = a3.bottom;
  right = a3.right;
  if (TUIInsets32Equal(top, left, bottom, right, 0.0, 0.0, 0.0, 0.0))
  {
    v8 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0x1Du);
    if (!v8)
    {
      return;
    }

    DataForKey = v8;
    TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0x1Du);
  }

  else
  {
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0x1Du, 0x10uLL, 1);
    if (!DataForKey)
    {
      return;
    }
  }

  *DataForKey = top;
  DataForKey[1] = left;
  DataForKey[2] = bottom;
  DataForKey[3] = right;
}

- (TUIImpressionData)impressionData
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x13u);

  return ObjectForKey;
}

- (NSArray)axCustomActions
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x31u);

  return ObjectForKey;
}

- (NSString)refId
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0xAu);

  return ObjectForKey;
}

- (NSString)refInstance
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x12u);

  return ObjectForKey;
}

- (TUIGridCoord)gridCoord
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x30u);

  return ObjectForKey;
}

- (NSString)axLabel
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0xEu);

  return ObjectForKey;
}

- (void)setAxLabel:(id)a3
{
  v4 = [a3 copy];
  TUI::Util::PartialStruct::Storage::setObjectForKey(&self->_storage, 0xEu, v4);
}

- (NSString)axValue
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x1Eu);

  return ObjectForKey;
}

- (void)setAxValue:(id)a3
{
  v4 = [a3 copy];
  TUI::Util::PartialStruct::Storage::setObjectForKey(&self->_storage, 0x1Eu, v4);
}

- (NSString)axHint
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x20u);

  return ObjectForKey;
}

- (void)setAxHint:(id)a3
{
  v4 = [a3 copy];
  TUI::Util::PartialStruct::Storage::setObjectForKey(&self->_storage, 0x20u, v4);
}

- (TUIAnimationGroupCollection)animationGroups
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x27u);

  return ObjectForKey;
}

- (TUIGuides)guides
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 9u);

  return ObjectForKey;
}

- (void)setInheritWidth:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFF7FFFF | v3;
}

- (void)setInheritHeight:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFEFFFFF | v3;
}

- (BOOL)axHasNonDefaultAttributess
{
  if (*(&self->_flags + 2) > 0x1FFu)
  {
    return 1;
  }

  v3 = 1;
  if ((*(&self->_flags + 6) & 2) == 0 && (*(&self->_flags + 6) & 1) == 0)
  {
    ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0xEu);
    if (!ObjectForKey)
    {
      v5 = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x1Eu);
      if (!v5)
      {
        v6 = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0x20u);
        v3 = v6 != 0;
      }
    }
  }

  return v3;
}

- (void)setAxDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFDFF | v3;
}

- (void)setAXElement:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xFBFF | v3;
}

- (void)setAxTouchContainer:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xF7FF | v3;
}

- (void)setAxButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xEFFF | v3;
}

- (void)setAxImage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xDFFF | v3;
}

- (void)setAxHeading:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = *(&self->_flags + 2) & 0xBFFF | v3;
}

- (void)setAxAdjustable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 2) = v3 & 0x8000 | *(&self->_flags + 2) & 0x7FFF;
}

- (void)setAxStaticText:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xFD | v3;
}

- (void)setGrouped:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_flags + 6) = *(&self->_flags + 6) & 0xF7 | v3;
}

+ (int64_t)textAlignmentFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6920 == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  sub_19C264();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [qword_2E6918 objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v7 = &dword_4;
    goto LABEL_8;
  }

  v7 = [v5 integerValue];
LABEL_8:

  return v7;
}

+ (unint64_t)halignFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6930 != -1)
  {
    sub_19C278();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6928 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)valignFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6940 != -1)
  {
    sub_19C28C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6938 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)anchorPositionFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6950 != -1)
  {
    sub_19C2A0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6948 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)compressedFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6960 != -1)
  {
    sub_19C2B4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6958 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)renderModelFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6970 != -1)
  {
    sub_19C2C8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6968 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)triggerStateFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6980 != -1)
  {
    sub_19C2DC();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6978 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (id)blendModeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6990 == -1)
  {
    if (v3)
    {
LABEL_3:
      v5 = [qword_2E6988 objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    sub_19C2F0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (unint64_t)interfaceLayoutDirectionFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E69A0 != -1)
  {
    sub_19C304();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6998 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)layoutModeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E69B0 != -1)
  {
    sub_19C318();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E69A8 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)roleFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E69C0 != -1)
  {
    sub_19C32C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E69B8 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)liveTransformFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E69D0 != -1)
  {
    sub_19C340();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E69C8 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (id)layerContentsGravityFromString:(id)a3
{
  v3 = a3;
  if (qword_2E69E0 != -1)
  {
    sub_19C354();
  }

  v4 = kCAGravityResize;
  if (v3 && ([qword_2E69D8 objectForKeyedSubscript:v3], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;

    v4 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v4;
}

+ (int64_t)imageRenderingModeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E69F0 != -1)
  {
    sub_19C368();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E69E8 objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

LABEL_6:
  return v6;
}

+ (id)videoGravityFromString:(id)a3
{
  v3 = a3;
  if (qword_2E6A00 != -1)
  {
    sub_19C37C();
  }

  v4 = AVLayerVideoGravityResizeAspect;
  if (v3 && ([qword_2E69F8 objectForKeyedSubscript:v3], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;

    v4 = v6;
  }

  else
  {
    v6 = 0;
  }

  return v4;
}

+ (unint64_t)axisFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6A10 != -1)
  {
    sub_19C390();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6A08 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)userInterfaceStyleFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6A20 != -1)
  {
    sub_19C3A4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6A18 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TUIBox *)self width];
  v7 = TUILengthDescription(v5, v6);
  v8 = [(TUIBox *)self height];
  v10 = TUILengthDescription(v8, v9);
  v11 = [NSMutableString stringWithFormat:@"<%@ %p w=%@ h=%@ anchor-position=%lu", v4, self, v7, v10, [(TUIBox *)self anchorPosition]];

  [(TUIBox *)self appendBoxDescription:v11];
  v12 = TUIProtocolCast(&OBJC_PROTOCOL___TUIModelContaining, self);
  v13 = objc_opt_new();
  [v12 appendContainedChildrenToArray:v13];
  if ([v13 count])
  {
    [v11 appendFormat:@" children=["];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = *v21;
      v17 = "";
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [v11 appendFormat:@"%s%@", v17, *(*(&v20 + 1) + 8 * i)];
          v17 = ", ";
        }

        v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v17 = ", ";
      }

      while (v15);
    }

    [v11 appendFormat:@"]"];
  }

  [v11 appendFormat:@">"];

  return v11;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_storage._data = 0;
  TUI::Box::Flags::Flags(&self->_flags);
  return self;
}

@end