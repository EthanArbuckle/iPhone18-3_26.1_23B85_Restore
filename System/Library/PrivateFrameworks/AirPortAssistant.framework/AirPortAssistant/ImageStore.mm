@interface ImageStore
+ (CGImage)cgImageFromImage:(id)a3 forContentsScale:(double)a4;
+ (double)informationDiagramBaseImageCenterOffset:(unsigned int)a3 small:(BOOL)a4;
+ (double)informationDiagramBaseImageRightEdgeInset:(unsigned int)a3 small:(BOOL)a4;
+ (id)imageForBaseStationWithProductID:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 small:(BOOL)a6 cropped:(BOOL)a7 threeDee:(BOOL)a8;
+ (id)imageForInformationalDiagram:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 audioImage:(BOOL)a6 small:(BOOL)a7;
+ (id)imageForInformationalDiagramNamed:(id)a3 small:(BOOL)a4;
+ (id)imageNameForInformationalDiagram:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 audioImage:(BOOL)a6 small:(BOOL)a7 useDataCache:(BOOL *)a8;
+ (id)imageNameForProductID:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 small:(BOOL)a6 cropped:(BOOL)a7 threeDee:(BOOL)a8;
+ (id)imageNamed:(id)a3;
+ (id)imageNamed:(id)a3 inBundle:(id)a4;
+ (id)insetImageForInformationalDiagram:(unsigned int)a3 deviceKind:(int)a4 audioImage:(BOOL)a5 small:(BOOL)a6;
+ (id)kitImageOfType:(int64_t)a3;
+ (id)sharedImageStore;
@end

@implementation ImageStore

+ (id)kitImageOfType:(int64_t)a3
{
  v3 = @"UIPreferencesWhiteCheck.png";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    v4 = @"UIPreferencesBlueCheck.png";
  }

  else
  {
    v4 = v3;
  }

  return MEMORY[0x2821F9670](MEMORY[0x277D755B8], sel_kitImageNamed_, v4);
}

+ (id)sharedImageStore
{
  result = qword_27E3833D0;
  if (!qword_27E3833D0)
  {
    result = objc_alloc_init(objc_opt_class());
    qword_27E3833D0 = result;
  }

  return result;
}

+ (id)imageNamed:(id)a3
{
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCA8D8];
  v6 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v5, v7, v6);

  return objc_msgSend_imageNamed_inBundle_(v4, v8, a3, v9);
}

+ (id)imageNamed:(id)a3 inBundle:(id)a4
{
  v6 = objc_msgSend_pathExtension(a3, a2, a3);
  v9 = objc_msgSend_stringByDeletingPathExtension(a3, v7, v8);
  result = objc_msgSend_imageNamed_inBundle_ofType_(ImageStore, v10, v9, a4, v6);
  if (!result)
  {
    if (sub_23EC13760(a3, v12, v13, v14, v15, v16, v17, v18))
    {
      result = sub_23EC13744();
      if (result)
      {

        return objc_msgSend_imageNamed_inBundle_ofType_(ImageStore, v19, v9, result, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (id)imageNameForProductID:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 small:(BOOL)a6 cropped:(BOOL)a7 threeDee:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = *&a3;
  v13 = sub_23EB4BDDC(*&a3);
  if (v13 > 5)
  {
    if ((v13 - 7) < 2)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v14, @"AirPort-%d", 8);
      goto LABEL_17;
    }

    if (v13 == 6)
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"TimeCapsule");
      goto LABEL_17;
    }

    if (v13 == 10)
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPortEx");
      goto LABEL_17;
    }
  }

  else
  {
    switch(v13)
    {
      case 3:
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPortExtremeG");
        goto LABEL_17;
      case 4:
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPortExpress");
        goto LABEL_17;
      case 5:
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPortExtremeN");
LABEL_17:
        v16 = v15;
        goto LABEL_18;
    }
  }

  if (v12)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v14, @"%d", v12);
    goto LABEL_17;
  }

  if ((a5 - 3) >= 2)
  {
    if (a5 == 2)
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"GenericAirPlay");
    }

    else
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"GenericBase");
    }

    goto LABEL_17;
  }

  v16 = 0;
LABEL_18:
  if (v8)
  {
    objc_msgSend_appendString_(v16, v14, @"-3D");
  }

  else
  {
    objc_msgSend_appendString_(v16, v14, @"-2D");
  }

  if (v9)
  {
    if (v10)
    {
      objc_msgSend_appendString_(v16, v17, @"-cropped");
    }

    else
    {
      objc_msgSend_appendString_(v16, v17, @"-reflected");
    }
  }

  objc_msgSend_appendString_(v16, v17, @".png");
  if (dword_27E381698 <= 800 && (dword_27E381698 != -1 || sub_23EB74AC8(&dword_27E381698, 0x320u)))
  {
    sub_23EB75374(&dword_27E381698, "+[ImageStore imageNameForProductID:subProductID:deviceKind:small:cropped:threeDee:]", 800, "constructed image name '%@'\n", v18, v19, v20, v21, v16);
  }

  return v16;
}

+ (id)imageForInformationalDiagram:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 audioImage:(BOOL)a6 small:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = *&a5;
  v10 = *&a4;
  v11 = *&a3;
  v27 = 0;
  do
  {
    v12 = objc_msgSend_imageNameForInformationalDiagram_subProductID_deviceKind_audioImage_small_useDataCache_(ImageStore, a2, v11, v10, v9, v8, v7, &v27);
    if (v27 == 1)
    {
      v13 = sub_23EC13744();
    }

    else
    {
      v14 = MEMORY[0x277CCA8D8];
      v15 = objc_opt_class();
      v13 = objc_msgSend_bundleForClass_(v14, v16, v15);
    }

    v17 = v13;
    v18 = objc_opt_class();
    v20 = objc_msgSend_imageNamed_inBundle_(v18, v19, v12, v17);
    v25 = v20;
    if (!v11)
    {
      break;
    }

    v11 = 0;
  }

  while (!v20);
  if (dword_27E381698 <= 800 && (dword_27E381698 != -1 || sub_23EB74AC8(&dword_27E381698, 0x320u)))
  {
    sub_23EB75374(&dword_27E381698, "+[ImageStore imageForInformationalDiagram:subProductID:deviceKind:audioImage:small:]", 800, "returning image %@\n", v21, v22, v23, v24, v25);
  }

  return v25;
}

+ (double)informationDiagramBaseImageCenterOffset:(unsigned int)a3 small:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = 0.539473712;
  }

  else
  {
    v5 = 0.545454562;
  }

  v6 = sub_23EB4BDDC(*&a3);
  if (v6 <= 5)
  {
    switch(v6)
    {
      case 3:
        v7 = !v4;
        v8 = 0.55799371;
        v9 = 0.552631557;
        break;
      case 4:
        v7 = !v4;
        v8 = 0.492163002;
        v9 = 0.491228074;
        break;
      case 5:
        v7 = !v4;
        v8 = 0.50470221;
        v9 = 0.495614022;
        break;
      default:
        return v5;
    }

    goto LABEL_16;
  }

  if ((v6 - 7) < 2)
  {
    v7 = !v4;
    v8 = 0.420062691;
    v9 = 0.412280709;
LABEL_16:
    if (v7)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }

  if (v6 == 6 || v6 == 10)
  {
    v7 = !v4;
    v8 = 0.470219433;
    v9 = 0.469298244;
    goto LABEL_16;
  }

  return v5;
}

+ (double)informationDiagramBaseImageRightEdgeInset:(unsigned int)a3 small:(BOOL)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = 16.0;
  }

  else
  {
    v5 = 23.0;
  }

  v6 = sub_23EB4BDDC(*&a3);
  if (v6 > 5)
  {
    if ((v6 - 7) < 2)
    {
      v7 = !v4;
      v8 = 72.5;
      v9 = 52.5;
    }

    else if (v6 == 6)
    {
      v7 = !v4;
      v8 = 16.0;
      v9 = 11.5;
    }

    else
    {
      if (v6 != 10)
      {
        return v5;
      }

      v7 = !v4;
      v8 = 48.0;
      v9 = 35.0;
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        v7 = !v4;
        v8 = 13.0;
        v9 = 9.0;
        break;
      case 4:
        v7 = !v4;
        v8 = 54.0;
        v9 = 38.5;
        break;
      case 5:
        v7 = !v4;
        v8 = 23.5;
        v9 = 16.5;
        break;
      default:
        return v5;
    }
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

+ (id)imageForInformationalDiagramNamed:(id)a3 small:(BOOL)a4
{
  v4 = a4;
  v7 = objc_opt_class();
  if (v4)
  {
    a3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@-Small", a3);
  }

  return objc_msgSend_imageNamed_(v7, v6, a3);
}

+ (id)imageNameForInformationalDiagram:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 audioImage:(BOOL)a6 small:(BOOL)a7 useDataCache:(BOOL *)a8
{
  v9 = a7;
  v10 = a6;
  v12 = *&a3;
  v13 = sub_23EB4BDDC(*&a3);
  if (a8)
  {
    *a8 = 0;
  }

  if (v13 <= 5)
  {
    if (v13 == 3)
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPort-Extreme-G");
      goto LABEL_32;
    }

    if (v13 != 4)
    {
      if (v13 == 5)
      {
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"AirPort-Extreme");
LABEL_32:
        v21 = v15;
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v16 = MEMORY[0x277CCAB68];
    v17 = @"AirPort-Express";
    v18 = @"AirPort-Express-Audio";
LABEL_15:
    if (v10)
    {
      v15 = objc_msgSend_stringWithString_(v16, v14, v18);
    }

    else
    {
      v15 = objc_msgSend_stringWithString_(v16, v14, v17);
    }

    goto LABEL_32;
  }

  if ((v13 - 7) < 2)
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v14, @"AirPort-%d", 8);
    goto LABEL_32;
  }

  if (v13 == 6)
  {
    v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"Time-Capsule");
    goto LABEL_32;
  }

  if (v13 == 10)
  {
    v16 = MEMORY[0x277CCAB68];
    v17 = @"AirPortEx";
    v18 = @"AirPortEx-Audio";
    goto LABEL_15;
  }

LABEL_18:
  if (!v12)
  {
    goto LABEL_27;
  }

  v19 = sub_23EC13744();
  if (a8)
  {
    *a8 = v19 != 0;
  }

  if (!v19 || (!v10 ? (v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v14, @"%d%s%s", v12, "-", "Info")) : (v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v14, @"%d%s%s%s%s", v12, "-", "Info", "-", "Audio")), (v21 = v20) == 0))
  {
LABEL_27:
    if ((a5 - 2) >= 2)
    {
      if (a5 == 1)
      {
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"Unknown-Device");
      }

      else
      {
        v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"Generic-Router");
      }
    }

    else
    {
      v15 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v14, @"Generic-AirPlay");
    }

    goto LABEL_32;
  }

LABEL_33:
  if (v9)
  {
    objc_msgSend_appendString_(v21, v14, @"-Small");
  }

  objc_msgSend_appendString_(v21, v14, @".png");
  return v21;
}

+ (id)insetImageForInformationalDiagram:(unsigned int)a3 deviceKind:(int)a4 audioImage:(BOOL)a5 small:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = *&a3;
  v10 = MEMORY[0x277CCA8D8];
  v11 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v10, v12, v11);
  v14 = sub_23EB4BDDC(v9);
  v16 = sub_23EB4BDAC(v9);
  if (v14 <= 0xA)
  {
    if (((1 << v14) & 0x1A0) != 0)
    {
      v17 = MEMORY[0x277CCAB68];
LABEL_7:
      v20 = @"Inset-Regular-WAN";
      v21 = @"Inset-Regular-Ethernet";
      goto LABEL_8;
    }

    if (((1 << v14) & 0x410) != 0)
    {
      v17 = MEMORY[0x277CCAB68];
      if (v7)
      {
LABEL_5:
        v18 = objc_msgSend_stringWithString_(v17, v15, @"Inset-Regular-Audio");
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    if (v14 == 6)
    {
      v17 = MEMORY[0x277CCAB68];
      v20 = @"Inset-Time-Capsule-WAN";
      v21 = @"Inset-Time-Capsule-Ethernet";
LABEL_8:
      if (v16 == 1)
      {
        v18 = objc_msgSend_stringWithString_(v17, v15, v21);
      }

      else
      {
        v18 = objc_msgSend_stringWithString_(v17, v15, v20);
      }

LABEL_11:
      v22 = v18;
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v25 = sub_23EC13744();
  if (!v25)
  {
    v17 = MEMORY[0x277CCAB68];
    if ((a4 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v26 = v25;
  if (v7)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v15, @"%d%s%s%s%s", v9, "-", "Inset", "-", "Audio");
  }

  else
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v15, @"%d%s%s", v9, "-", "Inset");
  }

  v22 = v27;
  v13 = v26;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_12:
  objc_msgSend_appendString_(v22, v19, @"-Small");
LABEL_13:
  NSLog(&cfstr_InsetImageName.isa, v22);

  return objc_msgSend_imageNamed_inBundle_ofType_(ImageStore, v23, v22, v13, @"png");
}

+ (id)imageForBaseStationWithProductID:(unsigned int)a3 subProductID:(unsigned int)a4 deviceKind:(int)a5 small:(BOOL)a6 cropped:(BOOL)a7 threeDee:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = *&a5;
  v12 = *&a4;
  v13 = *&a3;
  do
  {
    v14 = objc_msgSend_imageNameForProductID_subProductID_deviceKind_small_cropped_threeDee_(ImageStore, a2, v13, v12, v11, v10, v9, v8);
    v15 = objc_opt_class();
    v16 = MEMORY[0x277CCA8D8];
    v17 = objc_opt_class();
    v19 = objc_msgSend_bundleForClass_(v16, v18, v17);
    v21 = objc_msgSend_imageNamed_inBundle_(v15, v20, v14, v19);
    v26 = v21;
    if (!v13)
    {
      break;
    }

    v13 = 0;
  }

  while (!v21);
  if (dword_27E381698 <= 800 && (dword_27E381698 != -1 || sub_23EB74AC8(&dword_27E381698, 0x320u)))
  {
    sub_23EB75374(&dword_27E381698, "+[ImageStore imageForBaseStationWithProductID:subProductID:deviceKind:small:cropped:threeDee:]", 800, "returning image %@\n", v22, v23, v24, v25, v26);
  }

  return v26;
}

+ (CGImage)cgImageFromImage:(id)a3 forContentsScale:(double)a4
{
  if (dword_27E381698 <= 800 && (dword_27E381698 != -1 || sub_23EB74AC8(&dword_27E381698, 0x320u)))
  {
    objc_msgSend_size(a3, a2, a3);
    v6 = v5;
    objc_msgSend_size(a3, v7, v8);
    objc_msgSend_scale(a3, v9, v10);
    sub_23EB75374(&dword_27E381698, "+[ImageStore cgImageFromImage:forContentsScale:]", 800, "image width = %.1f  height = %.1f  scale = %.1f\n", v11, v12, v13, v14, v6);
  }

  v19 = objc_msgSend_CGImage(a3, a2, a3);
  if (dword_27E381698 <= 800 && (dword_27E381698 != -1 || sub_23EB74AC8(&dword_27E381698, 0x320u)))
  {
    sub_23EB75374(&dword_27E381698, "+[ImageStore cgImageFromImage:forContentsScale:]", 800, "returning cgImage %@\n", v15, v16, v17, v18, v19);
  }

  return v19;
}

@end