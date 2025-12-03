@interface NTKOlympusFaceBundle
- (id)_galleryFacesForColorOptions:(id)options device:(id)device;
- (id)_graceDefaultFacesForDevice:(id)device;
- (id)_hunterDefaultFacesForDevice:(id)device;
- (id)_legacyGalleryFacesForDevice:(id)device;
- (id)_olympusFaceWithStyle:(unint64_t)style dial:(unint64_t)dial colorOption:(id)option complicationTypesBySlot:(id)slot forDevice:(id)device;
- (id)_olympusFacesWithColorOption:(id)option complicationTypesBySlot:(id)slot forDevice:(id)device;
- (id)_spring2020DefaultFacesForDevice:(id)device;
- (id)complicationTypesBySlot;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroGraceDefaultFacesForDevice:(id)device;
- (id)heroSpring2020DefaultFacesForDevice:(id)device;
- (id)spring2020ComplicationTypesBySlot;
@end

@implementation NTKOlympusFaceBundle

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v5 = &off_10810;
  v6 = &off_10828;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    v10.receiver = self;
    v10.super_class = NTKOlympusFaceBundle;
    v5 = [(NTKOlympusFaceBundle *)&v10 galleryFacesForDevice:deviceCopy];
    [v5 enumerateObjectsUsingBlock:&stru_103E0];
  }

  else
  {
    v6 = [(NTKOlympusFaceBundle *)self defaultFaceForDevice:deviceCopy];
    deviceSupportsPigmentEditOption = [v6 deviceSupportsPigmentEditOption];

    if (deviceSupportsPigmentEditOption)
    {
      v8 = [(NTKOlympusFaceBundle *)self galleryDefaultPigmentOptionsForDevice:deviceCopy];
      v5 = [(NTKOlympusFaceBundle *)self _galleryFacesForColorOptions:v8 device:deviceCopy];
    }

    else
    {
      v5 = [(NTKOlympusFaceBundle *)self _legacyGalleryFacesForDevice:deviceCopy];
    }
  }

  return v5;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v5[0] = &off_10840;
    v5[1] = &off_108A0;
    v6[0] = &off_10B58;
    v6[1] = &off_10B70;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if ([device isRunningNapiliGMOrLater])
  {
    v3 = ntk_victory_black;
    v4 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_purePlatinum otherName:ntk_victory_black];
    v13[0] = v4;
    v5 = ntk_victory_volt;
    v6 = [NTKPigmentEditOption duotoneNameWithName:v3 otherName:ntk_victory_volt];
    v13[1] = v6;
    v7 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_anthracite otherName:v3];
    v13[2] = v7;
    v8 = [NTKPigmentEditOption duotoneNameWithName:v3 otherName:ntk_victory_totalOrange];
    v13[3] = v8;
    v9 = [NTKPigmentEditOption duotoneNameWithName:ntk_victory_hyperGrape otherName:v3];
    v13[4] = v9;
    v10 = [NTKPigmentEditOption duotoneNameWithName:v5 otherName:v3];
    v13[5] = v10;
    v11 = [NSArray arrayWithObjects:v13 count:6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)heroGraceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NSMutableArray array];
  v5 = [NTKFace defaultFaceOfStyle:35 forDevice:deviceCopy];
  v6 = [NTKOlympusStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
  [v5 selectOption:v6 forCustomEditMode:15 slot:0];

  v7 = [NTKOlympusDialShapeEditOption optionWithShape:0 forDevice:deviceCopy];
  [v5 selectOption:v7 forCustomEditMode:12 slot:0];

  [v4 addObject:v5];
  v8 = [NTKFace defaultFaceOfStyle:35 forDevice:deviceCopy];
  v9 = [NTKOlympusStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
  [v8 selectOption:v9 forCustomEditMode:15 slot:0];

  v10 = [NTKOlympusDialShapeEditOption optionWithShape:1 forDevice:deviceCopy];
  [v8 selectOption:v10 forCustomEditMode:12 slot:0];

  [v4 addObject:v8];
  v11 = [NTKFace defaultFaceOfStyle:35 forDevice:deviceCopy];
  v12 = [NTKOlympusStyleEditOption optionWithStyle:3 forDevice:deviceCopy];
  [v11 selectOption:v12 forCustomEditMode:15 slot:0];

  v13 = [NTKOlympusDialShapeEditOption optionWithShape:0 forDevice:deviceCopy];

  [v11 selectOption:v13 forCustomEditMode:12 slot:0];
  [v4 addObject:v11];
  v14 = [v4 copy];

  return v14;
}

- (id)heroSpring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[NSMutableArray array];
  v5 = [NTKFace defaultFaceOfStyle:35 forDevice:deviceCopy];
  v6 = [NTKOlympusColorEditOption optionWithOlympusColor:26 forDevice:deviceCopy];
  [v5 selectOption:v6 forCustomEditMode:10 slot:0];

  v7 = [NTKOlympusStyleEditOption optionWithStyle:0 forDevice:deviceCopy];
  [v5 selectOption:v7 forCustomEditMode:15 slot:0];

  v8 = [NTKOlympusDialShapeEditOption optionWithShape:0 forDevice:deviceCopy];
  [v5 selectOption:v8 forCustomEditMode:12 slot:0];

  v17[0] = NTKComplicationSlotTopLeft;
  v17[1] = NTKComplicationSlotTopRight;
  v18[0] = &off_10B88;
  v18[1] = &off_10BA0;
  v17[2] = NTKComplicationSlotBottomLeft;
  v17[3] = NTKComplicationSlotBottomRight;
  v18[2] = &off_10BB8;
  v18[3] = &off_10BD0;
  v17[4] = NTKComplicationSlotBezel;
  v18[4] = &off_10BE8;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  [v5 _setFaceGalleryComplicationTypesForSlots:v9];

  [v4 addObject:v5];
  v10 = [v5 copy];
  v11 = [NTKOlympusStyleEditOption optionWithStyle:2 forDevice:deviceCopy];
  [v10 selectOption:v11 forCustomEditMode:15 slot:0];

  v12 = [NTKOlympusDialShapeEditOption optionWithShape:1 forDevice:deviceCopy];
  [v10 selectOption:v12 forCustomEditMode:12 slot:0];

  [v4 addObject:v10];
  v13 = [v5 copy];
  v14 = [NTKOlympusStyleEditOption optionWithStyle:3 forDevice:deviceCopy];

  [v13 selectOption:v14 forCustomEditMode:15 slot:0];
  [v4 addObject:v13];
  v15 = [v4 copy];

  return v15;
}

- (id)_legacyGalleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy supportsPDRCapability:2919474315])
  {
    v5 = [(NTKOlympusFaceBundle *)self _hunterDefaultFacesForDevice:deviceCopy];
  }

  else
  {
    if ([deviceCopy supportsPDRCapability:753405533])
    {
      [(NTKOlympusFaceBundle *)self _spring2020DefaultFacesForDevice:deviceCopy];
    }

    else
    {
      [(NTKOlympusFaceBundle *)self _graceDefaultFacesForDevice:deviceCopy];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

- (id)_graceDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  complicationTypesBySlot = [(NTKOlympusFaceBundle *)self complicationTypesBySlot];
  v6 = +[NSMutableArray array];
  v7 = [(NTKOlympusFaceBundle *)self _colorOptionFromColorValue:7 device:deviceCopy];
  v8 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v7 complicationTypesBySlot:complicationTypesBySlot forDevice:deviceCopy];
  [v6 addObjectsFromArray:v8];

  v9 = [(NTKOlympusFaceBundle *)self _colorOptionFromColorValue:15 device:deviceCopy];
  v10 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v9 complicationTypesBySlot:complicationTypesBySlot forDevice:deviceCopy];

  [v6 addObjectsFromArray:v10];
  v11 = [v6 copy];

  return v11;
}

- (id)_galleryFacesForColorOptions:(id)options device:(id)device
{
  optionsCopy = options;
  deviceCopy = device;
  spring2020ComplicationTypesBySlot = [(NTKOlympusFaceBundle *)self spring2020ComplicationTypesBySlot];
  v9 = +[NSMutableArray array];
  if ([optionsCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [optionsCopy objectAtIndexedSubscript:v10];
      v12 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v11 complicationTypesBySlot:spring2020ComplicationTypesBySlot forDevice:deviceCopy];
      [v9 addObjectsFromArray:v12];

      v10 += 3;
    }

    while ([optionsCopy count] > v10);
  }

  v13 = [v9 copy];

  return v13;
}

- (id)_hunterDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  spring2020ComplicationTypesBySlot = [(NTKOlympusFaceBundle *)self spring2020ComplicationTypesBySlot];
  v6 = +[NSMutableArray array];
  v7 = [(NTKOlympusFaceBundle *)self _colorOptionFromColorValue:31 device:deviceCopy];
  v8 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v7 complicationTypesBySlot:spring2020ComplicationTypesBySlot forDevice:deviceCopy];
  [v6 addObjectsFromArray:v8];

  v9 = [(NTKOlympusFaceBundle *)self _colorOptionFromColorValue:34 device:deviceCopy];
  v10 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v9 complicationTypesBySlot:spring2020ComplicationTypesBySlot forDevice:deviceCopy];

  [v6 addObjectsFromArray:v10];
  v11 = [v6 copy];

  return v11;
}

- (id)_spring2020DefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  spring2020ComplicationTypesBySlot = [(NTKOlympusFaceBundle *)self spring2020ComplicationTypesBySlot];
  v6 = +[NSMutableArray array];
  v7 = [(NTKOlympusFaceBundle *)self _colorOptionFromColorValue:26 device:deviceCopy];
  v8 = [(NTKOlympusFaceBundle *)self _olympusFacesWithColorOption:v7 complicationTypesBySlot:spring2020ComplicationTypesBySlot forDevice:deviceCopy];
  [v6 addObjectsFromArray:v8];

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_65F4;
  v18 = &unk_10408;
  selfCopy = self;
  v20 = deviceCopy;
  v21 = spring2020ComplicationTypesBySlot;
  v22 = v6;
  v9 = v6;
  v10 = spring2020ComplicationTypesBySlot;
  v11 = deviceCopy;
  v12 = objc_retainBlock(&v15);
  (v12[2])(v12, 0);
  (v12[2])(v12, 2);
  (v12[2])(v12, 3);
  v13 = [v9 copy];

  return v13;
}

- (id)_olympusFacesWithColorOption:(id)option complicationTypesBySlot:(id)slot forDevice:(id)device
{
  slotCopy = slot;
  deviceCopy = device;
  optionCopy = option;
  +[NSMutableArray array];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_68A0;
  v20 = &unk_10430;
  selfCopy = self;
  v22 = slotCopy;
  v24 = v23 = deviceCopy;
  v11 = v24;
  v12 = deviceCopy;
  v13 = slotCopy;
  v14 = objc_retainBlock(&v17);
  (v14[2])(v14, 0, 0, optionCopy);
  (v14[2])(v14, 0, 1, optionCopy);
  (v14[2])(v14, 2, 0, optionCopy);
  (v14[2])(v14, 2, 1, optionCopy);
  (v14[2])(v14, 3, 0, optionCopy);
  (v14[2])(v14, 3, 1, optionCopy);

  v15 = [v11 copy];

  return v15;
}

- (id)_olympusFaceWithStyle:(unint64_t)style dial:(unint64_t)dial colorOption:(id)option complicationTypesBySlot:(id)slot forDevice:(id)device
{
  deviceCopy = device;
  slotCopy = slot;
  optionCopy = option;
  v14 = [NTKFace defaultFaceOfStyle:35 forDevice:deviceCopy];
  [v14 selectOption:optionCopy forCustomEditMode:10 slot:0];

  v15 = [NTKOlympusStyleEditOption optionWithStyle:style forDevice:deviceCopy];
  [v14 selectOption:v15 forCustomEditMode:15 slot:0];

  v16 = [NTKOlympusDialShapeEditOption optionWithShape:dial forDevice:deviceCopy];

  [v14 selectOption:v16 forCustomEditMode:12 slot:0];
  [v14 _setFaceGalleryComplicationTypesForSlots:slotCopy];

  return v14;
}

- (id)complicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_10C00;
  v5[1] = &off_10C18;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v5[2] = &off_10C30;
  v5[3] = &off_10C48;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (id)spring2020ComplicationTypesBySlot
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v5[0] = &off_10C60;
  v5[1] = &off_10C78;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v5[2] = &off_10C90;
  v5[3] = &off_10CA8;
  v4[4] = NTKComplicationSlotBezel;
  v5[4] = &off_10CC0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end