@interface AKToolbarViewController
+ (id)_imageNameForToolbarButtonItemOfType:(unint64_t)a3;
+ (id)alternateImageForToolbarButtonItemOfType:(unint64_t)a3;
+ (id)imageForToolbarButtonItemOfType:(unint64_t)a3;
+ (id)titleForToolbarButtonItemOfType:(unint64_t)a3;
- (AKController)controller;
- (AKToolbarViewController)initWithController:(id)a3;
@end

@implementation AKToolbarViewController

- (AKToolbarViewController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKToolbarViewController;
  v5 = [(AKToolbarViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKToolbarViewController *)v5 setController:v4];
    [(AKToolbarViewController *)v6 setMaxHDRGain:1.0];
  }

  return v6;
}

+ (id)titleForToolbarButtonItemOfType:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 12)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Sign";
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_22;
        }

        v4 = +[AKController akBundle];
        v5 = v4;
        v6 = @"Text";
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_22;
      }

      v4 = +[AKController akBundle];
      v5 = v4;
      v6 = @"Draw";
    }

    else
    {
      v4 = +[AKController akBundle];
      v5 = v4;
      v6 = @"Sketch";
    }

    goto LABEL_20;
  }

  if (a3 <= 17)
  {
    if (a3 == 13)
    {
      v4 = +[AKController akBundle];
      v5 = v4;
      v6 = @"Draw_Ink";
      v7 = @"Draw";
      goto LABEL_21;
    }

    if (a3 != 17)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a3 == 18)
    {
      v4 = +[AKController akBundle];
      v5 = v4;
      v6 = @"Rotate Right";
      goto LABEL_20;
    }

    if (a3 != 19)
    {
      if (a3 != 20)
      {
        goto LABEL_22;
      }

      v4 = +[AKController akBundle];
      v5 = v4;
      v6 = @"Crop";
      goto LABEL_20;
    }
  }

  v4 = +[AKController akBundle];
  v5 = v4;
  v6 = @"Rotate Left";
LABEL_20:
  v7 = &stru_28519E870;
LABEL_21:
  v3 = [v4 localizedStringForKey:v6 value:v7 table:@"AKToolbarViewController"];

LABEL_22:

  return v3;
}

+ (id)_imageNameForToolbarButtonItemOfType:(unint64_t)a3
{
  if (a3 > 0x14)
  {
    return 0;
  }

  else
  {
    return off_278C7C2E8[a3];
  }
}

+ (id)imageForToolbarButtonItemOfType:(unint64_t)a3
{
  v3 = [a1 _imageNameForToolbarButtonItemOfType:a3];
  if (v3)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = +[AKController akBundle];
    v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)alternateImageForToolbarButtonItemOfType:(unint64_t)a3
{
  v3 = [a1 _imageNameForToolbarButtonItemOfType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByAppendingString:@"_Active"];

    v6 = MEMORY[0x277D755B8];
    v7 = +[AKController akBundle];
    v4 = [v6 imageNamed:v5 inBundle:v7 compatibleWithTraitCollection:0];
  }

  else
  {
    v5 = 0;
  }

  return v4;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end