@interface NLActivityTimelineEntryModel
+ (id)_LocalizedStringWithActiveEnergy:(id)a3;
- (NLActivityTimelineEntryModel)initWithDataModel:(id)a3;
- (id)_activityTemplateWithFamily:(int64_t)a3;
- (id)_largeModularTemplate;
- (id)_largeUtilityTemplate;
- (id)_newLargeModularTemplateWithRow1Col2TextProvider:(id)a3 row2Col2TextProvider:(id)a4 row3Col2TextProvider:(id)a5;
- (id)_signatureBezelTemplate;
- (id)_signatureCircularTemplate;
- (id)_signatureCornerTemplate;
- (id)_signatureExtraLargeTemplate;
- (id)_signatureRectangleTemplate;
- (id)templateForComplicationFamily:(int64_t)a3;
- (int64_t)availabilityState;
@end

@implementation NLActivityTimelineEntryModel

- (NLActivityTimelineEntryModel)initWithDataModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NLActivityTimelineEntryModel;
  v6 = [(NLActivityTimelineEntryModel *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataModel, a3);
    v8 = [v5 date];
    [(NLActivityTimelineEntryModel *)v7 setEntryDate:v8];
  }

  return v7;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  v5 = 0;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v6 = [(NLActivityTimelineEntryModel *)self _signatureCircularTemplate];
          break;
        case 11:
          v6 = [(NLActivityTimelineEntryModel *)self _signatureRectangleTemplate];
          break;
        case 12:
          v6 = [(NLActivityTimelineEntryModel *)self _signatureExtraLargeTemplate];
          break;
        default:
          goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a3 != 7)
    {
      if (a3 == 8)
      {
        [(NLActivityTimelineEntryModel *)self _signatureCornerTemplate];
      }

      else
      {
        [(NLActivityTimelineEntryModel *)self _signatureBezelTemplate];
      }
      v6 = ;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      v6 = [(NLActivityTimelineEntryModel *)self _largeModularTemplate];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  switch(a3)
  {
    case 2:
      goto LABEL_19;
    case 3:
      v6 = [(NLActivityTimelineEntryModel *)self _largeUtilityTemplate];
      goto LABEL_20;
    case 4:
LABEL_19:
      v6 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:a3];
LABEL_20:
      v5 = v6;
      break;
  }

LABEL_21:
  if (CLKComplicationFamilyCircularMedium == a3)
  {
    v7 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:a3];

    v5 = v7;
  }

  return v5;
}

- (id)_activityTemplateWithFamily:(int64_t)a3
{
  v4 = [CLKComplicationTemplateActivity activityTemplateWithFamily:a3];
  if ([(NLActivityTimelineEntryModel *)self availabilityState])
  {
    [v4 setHideDots:1];
  }

  else
  {
    v5 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
    dataModel = self->_dataModel;
    if (v5 == &dword_0 + 2)
    {
      [(FIUIActivityDataModel *)dataModel appleMoveTimeCompletionPercentage];
    }

    else
    {
      [(FIUIActivityDataModel *)dataModel activeEnergyCompletionPercentage];
    }

    [v4 setMovePercentComplete:?];
    [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeCompletionPercentage];
    [v4 setExercisePercentComplete:?];
    [(FIUIActivityDataModel *)self->_dataModel appleStandHourCompletionPercentage];
    [v4 setStandPercentComplete:?];
  }

  [v4 finalize];

  return v4;
}

- (id)_largeModularTemplate
{
  v3 = [(NLActivityTimelineEntryModel *)self availabilityState];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      if ([(FIUIActivityDataModel *)self->_dataModel activityMoveMode]== &dword_0 + 2)
      {
        [(FIUIActivityDataModel *)self->_dataModel appleMoveTimeTotal];
        LODWORD(v10) = llround(v9);
        v11 = [NSString localizedStringWithFormat:@"%d", v10];
        [(FIUIActivityDataModel *)self->_dataModel appleMoveTimeGoal];
        LODWORD(v13) = llround(v12);
        v14 = [NSString localizedStringWithFormat:@"%d", v13];
      }

      else
      {
        v18 = objc_opt_class();
        v19 = [(FIUIActivityDataModel *)self->_dataModel activeEnergyTotal];
        v11 = [v18 _LocalizedStringWithActiveEnergy:v19];

        v20 = objc_opt_class();
        v21 = [(FIUIActivityDataModel *)self->_dataModel activeEnergyGoal];
        v14 = [v20 _LocalizedStringWithActiveEnergy:v21];
      }

      v6 = NTKFractionStringBasedOnCurrentLocaleNumberSystem();

      v34 = [CLKSimpleTextProvider textProviderWithText:v6];
      [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeTotal];
      LODWORD(v23) = llround(v22);
      v36 = [NSString localizedStringWithFormat:@"%d", v23];
      [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeGoal];
      LODWORD(v25) = llround(v24);
      v35 = [NSString localizedStringWithFormat:@"%d", v25];
      v26 = NTKFractionStringBasedOnCurrentLocaleNumberSystem();
      v27 = [CLKSimpleTextProvider textProviderWithText:v26];
      v28 = [NSString localizedStringWithFormat:@"%d", [(FIUIActivityDataModel *)self->_dataModel appleStandHoursTotal]];
      v29 = [NSString localizedStringWithFormat:@"%d", [(FIUIActivityDataModel *)self->_dataModel appleStandHoursGoal]];
      v30 = NTKFractionStringBasedOnCurrentLocaleNumberSystem();
      v31 = [CLKSimpleTextProvider textProviderWithText:v30];
      v4 = [(NLActivityTimelineEntryModel *)self _newLargeModularTemplateWithRow1Col2TextProvider:v34 row2Col2TextProvider:v27 row3Col2TextProvider:v31];
      v32 = +[UIColor clearColor];
      [v4 setTintColor:v32];

      goto LABEL_14;
    }

    if (v3 != 1)
    {
      goto LABEL_15;
    }

    v5 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_LARGE_MODULAR");
    v6 = [CLKSimpleTextProvider textProviderWithText:v5];

    v7 = @"ACTIVITY_LOADING_LARGE_MODULAR";
    goto LABEL_11;
  }

  if (v3 == 3)
  {
    v15 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_LARGE_MODULAR");
    v6 = [CLKSimpleTextProvider textProviderWithText:v15];

    v7 = @"ACTIVITY_PROMPT_SETUP_BODY_LARGE_MODULAR";
LABEL_11:
    v16 = NLActivityComplicationLocalizedString(v7);
    v17 = [CLKSimpleTextProvider textProviderWithText:v16];

    v4 = [CLKComplicationTemplateModularLargeStandardBody templateWithHeaderTextProvider:v6 body1TextProvider:v17];

    goto LABEL_14;
  }

  if (v3 != 2)
  {
    goto LABEL_15;
  }

  v8 = NLActivityComplicationLocalizedString(@"ACTIVITY_LARGE_INVALID_DATA");
  v6 = [NTKOverrideTextProvider textProviderWithText:v8 overrideBlock:&stru_10688];

  v4 = [(NLActivityTimelineEntryModel *)self _newLargeModularTemplateWithRow1Col2TextProvider:v6 row2Col2TextProvider:v6 row3Col2TextProvider:v6];
LABEL_14:

LABEL_15:
  [v4 finalize];

  return v4;
}

- (id)_newLargeModularTemplateWithRow1Col2TextProvider:(id)a3 row2Col2TextProvider:(id)a4 row3Col2TextProvider:(id)a5
{
  dataModel = self->_dataModel;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([(FIUIActivityDataModel *)dataModel activityMoveMode]== &dword_0 + 2)
  {
    v11 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
    v12 = [CLKSimpleTextProvider textProviderWithText:v11];
  }

  else
  {
    v13 = +[FIUIActivityDataModel formattingManager];
    v11 = [v13 localizationKeyForEnergyBaseKey:@"ACTIVITY_TITLE_ENERGY"];

    v14 = NLActivityComplicationLocalizedString(v11);
    v12 = [CLKSimpleTextProvider textProviderWithText:v14];
  }

  v15 = NTKMoveNonGradientTextColor();
  [v12 setTintColor:v15];

  v16 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
  v17 = [CLKSimpleTextProvider textProviderWithText:v16];

  v18 = NTKExerciseNonGradientTextColor();
  [v17 setTintColor:v18];

  v19 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_HOUR");
  v20 = [CLKSimpleTextProvider textProviderWithText:v19];

  v21 = NTKStandNonGradientTextColor();
  [v20 setTintColor:v21];

  v22 = [CLKComplicationTemplateModularLargeColumns templateWithRow1Column1TextProvider:v12 row1Column2TextProvider:v10 row2Column1TextProvider:v17 row2Column2TextProvider:v9 row3Column1TextProvider:v20 row3Column2TextProvider:v8];

  return v22;
}

- (id)_largeUtilityTemplate
{
  v3 = [(NLActivityTimelineEntryModel *)self availabilityState];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v5 = @"ACTIVITY_PROMPT_SETUP_LONG_UTILITY";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_26;
      }

      v5 = @"ACTIVITY_LOCKED_LONG_UTILITY";
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_26;
    }

    v5 = @"ACTIVITY_LOADING_LONG_UTILITY";
LABEL_12:
    v9 = NLActivityComplicationLocalizedString(v5);
    v4 = [CLKSimpleTextProvider textProviderWithText:v9];

    goto LABEL_26;
  }

  v6 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
  dataModel = self->_dataModel;
  if (v6 == &dword_0 + 2)
  {
    [(FIUIActivityDataModel *)dataModel appleMoveTimeTotal];
    if (v8 >= 0.0)
    {
      [NSString localizedStringWithFormat:@"%ld", llround(v8)];
    }

    else
    {
      NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
    }
    v11 = ;
    v10 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
    v12 = [v11 stringByAppendingString:v10];
  }

  else
  {
    v10 = [(FIUIActivityDataModel *)dataModel activeEnergyTotal];
    if (v10)
    {
      [objc_opt_class() _LocalizedStringWithActiveEnergy:v10];
    }

    else
    {
      NLActivityComplicationLocalizedString(@"ACTIVITY_ENERGY_INVALID_DATA");
    }
    v13 = ;
    v11 = +[FIUIActivityDataModel formattingManager];
    v14 = [v11 localizationKeyForEnergyBaseKey:@"ACTIVITY_TITLE_ENERGY"];
    v15 = NLActivityComplicationLocalizedString(v14);
    v12 = [v13 stringByAppendingString:v15];
  }

  [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeTotal];
  if (v16 >= 0.0)
  {
    [NSString localizedStringWithFormat:@"%ld", llround(v16)];
  }

  else
  {
    NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
  }
  v17 = ;
  v18 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
  v19 = [v17 stringByAppendingString:v18];

  v20 = [(FIUIActivityDataModel *)self->_dataModel appleStandHoursTotal];
  v21 = [NSString localizedStringWithFormat:@"%d", [(FIUIActivityDataModel *)self->_dataModel appleStandHoursGoal]];
  if ((v20 & 0x8000000000000000) != 0)
  {
    NLActivityComplicationLocalizedString(@"ACTIVITY_HOUR_INVALID_DATA");
  }

  else
  {
    [NSString localizedStringWithFormat:@"%d", v20];
  }
  v22 = ;
  v23 = NTKFractionStringBasedOnCurrentLocaleNumberSystem();

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_79CC;
  v29[3] = &unk_10648;
  v30 = v12;
  v31 = v19;
  v32 = v23;
  v24 = v23;
  v25 = v19;
  v26 = v12;
  v4 = [NTKOverrideTextProvider textProviderWithText:@"PLACEHOLDER" overrideBlock:v29];

LABEL_26:
  v27 = [CLKComplicationTemplateUtilitarianLargeFlat templateWithTextProvider:v4];
  [v27 finalize];

  return v27;
}

- (id)_signatureCircularTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v8 = @"NLActivityRichComplicationActivityTemplateKey";
  v4 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:10];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v3];

  return v6;
}

- (id)_signatureExtraLargeTemplate
{
  v3 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v8 = @"NLActivityRichComplicationActivityTemplateKey";
  v4 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:12];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v3 setMetadata:v5];

  v6 = [CLKComplicationTemplateGraphicExtraLargeCircularImage templateWithImageProvider:v3];

  return v6;
}

- (id)_signatureCornerTemplate
{
  v3 = [(NLActivityTimelineEntryModel *)self availabilityState];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v6 = NLActivityComplicationLocalizedString(@"ACTIVITY_SIGNATURE_CORNER_PROMPT_SETUP");
      v10 = NLActivityComplicationLocalizedString(@"ACTIVITY_SIGNATURE_CORNER_PROMPT_SETUP_SHORT");
      v4 = [CLKSimpleTextProvider textProviderWithText:v6 shortText:v10];

      goto LABEL_26;
    }

    if (v3 != 2)
    {
      goto LABEL_27;
    }

    v5 = @"ACTIVITY_SIGNATURE_CORNER_LOCKED";
  }

  else
  {
    if (!v3)
    {
      v7 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
      dataModel = self->_dataModel;
      if (v7 == &dword_0 + 2)
      {
        [(FIUIActivityDataModel *)dataModel appleMoveTimeCompletionPercentage];
      }

      else
      {
        [(FIUIActivityDataModel *)dataModel activeEnergyCompletionPercentage];
      }

      v11 = v9;
      v12 = ARUIRingPercentageValueNoRing;
      [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeCompletionPercentage];
      v14 = v13;
      v15 = ARUIRingPercentageValueNoRing;
      [(FIUIActivityDataModel *)self->_dataModel appleStandHourCompletionPercentage];
      v17 = v16;
      v18 = ARUIRingPercentageValueNoRing;
      v19 = sub_83C0();
      v20 = NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
      v21 = v20;
      if (v11 == v12)
      {
        v22 = v20;
      }

      else
      {
        if (v7 == &dword_0 + 2)
        {
          [(FIUIActivityDataModel *)self->_dataModel appleMoveTimeTotal];
          v24 = v23;
        }

        else
        {
          v25 = +[FIUIActivityDataModel formattingManager];
          v26 = [v25 unitManager];
          v27 = [v26 userActiveEnergyBurnedUnit];

          v28 = [(FIUIActivityDataModel *)self->_dataModel activeEnergyTotal];
          [v28 doubleValueForUnit:v27];
          v24 = floor(v29);
        }

        v30 = [NSNumber numberWithDouble:v24];
        v22 = [v19 stringFromNumber:v30];
      }

      if (v14 == v15)
      {
        v31 = v21;
      }

      else
      {
        [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeTotal];
        v32 = [NSNumber numberWithDouble:?];
        v31 = [v19 stringFromNumber:v32];
      }

      v51 = v19;
      v52 = v21;
      if (v17 == v18)
      {
        v33 = v21;
      }

      else
      {
        v34 = [NSNumber numberWithDouble:[(FIUIActivityDataModel *)self->_dataModel appleStandHoursTotal]];
        v33 = [v19 stringFromNumber:v34];
      }

      v35 = [CLKSimpleTextProvider textProviderWithText:v22];
      v36 = NTKMoveNonGradientTextColor();
      [v35 setTintColor:v36];

      v37 = [CLKSimpleTextProvider textProviderWithText:v31];
      v38 = NTKExerciseNonGradientTextColor();
      [v37 setTintColor:v38];

      v39 = [CLKSimpleTextProvider textProviderWithText:v33];
      v40 = NTKStandNonGradientTextColor();
      [v39 setTintColor:v40];

      v41 = NLActivityComplicationLocalizedString(@"ACTIVITY_SIGNATURE_CORNER_SEPARATOR");
      NLActivityComplicationLocalizedString(@"ACTIVITY_SIGNATURE_CORNER_FORMAT_%@_%@_%@_%@_%@");
      v42 = v50 = v22;
      v4 = [CLKTextProvider textProviderWithFormat:v42, v35, v41, v37, v41, v39];
      +[UIColor systemGrayColor];
      v44 = v43 = v31;
      [v4 setTintColor:v44];

      v6 = v51;
      goto LABEL_26;
    }

    if (v3 != 1)
    {
      goto LABEL_27;
    }

    v5 = @"ACTIVITY_SIGNATURE_CORNER_LOADING";
  }

  v6 = NLActivityComplicationLocalizedString(v5);
  v4 = [CLKSimpleTextProvider textProviderWithText:v6];
LABEL_26:

LABEL_27:
  v45 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v53 = @"NLActivityRichComplicationActivityTemplateKey";
  v46 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:8];
  v54 = v46;
  v47 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  [v45 setMetadata:v47];

  v48 = [CLKComplicationTemplateGraphicCornerTextImage templateWithTextProvider:v4 imageProvider:v45];

  return v48;
}

- (id)_signatureBezelTemplate
{
  v3 = [(NLActivityTimelineEntryModel *)self availabilityState];
  v4 = 0;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v5 = @"ACTIVITY_PROMPT_SETUP_LONG_UTILITY";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_26;
      }

      v5 = @"ACTIVITY_LOCKED_LONG_UTILITY";
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_26;
    }

    v5 = @"ACTIVITY_LOADING_LONG_UTILITY";
LABEL_12:
    v4 = NLActivityComplicationLocalizedString(v5);
    goto LABEL_26;
  }

  v6 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
  dataModel = self->_dataModel;
  if (v6 == &dword_0 + 2)
  {
    [(FIUIActivityDataModel *)dataModel appleMoveTimeTotal];
    if (v8 >= 0.0)
    {
      [NSString localizedStringWithFormat:@"%ld", llround(v8)];
    }

    else
    {
      NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
    }
    v10 = ;
    v9 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
    v11 = [v10 stringByAppendingString:v9];
  }

  else
  {
    v9 = [(FIUIActivityDataModel *)dataModel activeEnergyTotal];
    if (v9)
    {
      [objc_opt_class() _LocalizedStringWithActiveEnergy:v9];
    }

    else
    {
      NLActivityComplicationLocalizedString(@"ACTIVITY_ENERGY_INVALID_DATA");
    }
    v12 = ;
    v10 = +[FIUIActivityDataModel formattingManager];
    v13 = [v10 localizationKeyForEnergyBaseKey:@"ACTIVITY_TITLE_ENERGY"];
    v14 = NLActivityComplicationLocalizedString(v13);
    v11 = [v12 stringByAppendingString:v14];
  }

  [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeTotal];
  if (v15 >= 0.0)
  {
    [NSString localizedStringWithFormat:@"%ld", llround(v15)];
  }

  else
  {
    NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
  }
  v16 = ;
  v17 = NLActivityComplicationLocalizedString(@"ACTIVITY_TITLE_MIN");
  v18 = [v16 stringByAppendingString:v17];

  v19 = [(FIUIActivityDataModel *)self->_dataModel appleStandHoursTotal];
  v20 = [NSString localizedStringWithFormat:@"%d", [(FIUIActivityDataModel *)self->_dataModel appleStandHoursGoal]];
  if ((v19 & 0x8000000000000000) != 0)
  {
    NLActivityComplicationLocalizedString(@"ACTIVITY_HOUR_INVALID_DATA");
  }

  else
  {
    [NSString localizedStringWithFormat:@"%d", v19];
  }
  v21 = ;
  v22 = NTKFractionStringBasedOnCurrentLocaleNumberSystem();

  v35[0] = v11;
  v35[1] = v18;
  v35[2] = v22;
  v23 = [NSArray arrayWithObjects:v35 count:3];
  v24 = NLActivityComplicationLocalizedString(@"ACTIVITY_LONG_ANALOG_SEPARATOR");
  v25 = [v23 componentsJoinedByString:v24];
  v4 = [v25 lowercaseString];

LABEL_26:
  v26 = [CLKSimpleTextProvider textProviderWithText:v4];
  v27 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v33 = @"NLActivityRichComplicationActivityTemplateKey";
  v28 = [(NLActivityTimelineEntryModel *)self _activityTemplateWithFamily:9];
  v34 = v28;
  v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v27 setMetadata:v29];

  v30 = [CLKComplicationTemplateGraphicCircularImage templateWithImageProvider:v27];
  v31 = [CLKComplicationTemplateGraphicBezelCircularText templateWithCircularTemplate:v30 textProvider:v26];

  return v31;
}

- (id)_signatureRectangleTemplate
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&__NSArray0__struct forKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveChartData"];
  [v3 setObject:&__NSArray0__struct forKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseChartData"];
  [v3 setObject:&__NSArray0__struct forKeyedSubscript:@"NLActivityRichComplicationRectangularViewStandChartData"];
  v4 = [UIColor colorWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  v5 = [(NLActivityTimelineEntryModel *)self availabilityState];
  v6 = 1;
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v7 = @"ACTIVITY_SIGNATURE_RECTANGLE_SETUP";
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_36;
      }

      v7 = @"ACTIVITY_SIGNATURE_RECTANGLE_LOCKED";
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    v61 = v4;
    v8 = NLActivityComplicationLocalizedString(@"ACTIVITY_SIGNATURE_RECTANGLE_ACTIVITY");
    v9 = [v8 stringByAppendingString:@" "];

    v10 = [CLKSimpleTextProvider textProviderWithText:v9];
    v11 = +[UIColor whiteColor];
    [v10 setTintColor:v11];

    [v3 setObject:v10 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityText"];
    v62 = sub_83C0();
    v12 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
    v13 = [NSNumber numberWithInteger:v12];
    [v3 setObject:v13 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityMoveMode"];

    dataModel = self->_dataModel;
    if (v12 == &dword_0 + 2)
    {
      [(FIUIActivityDataModel *)dataModel appleMoveTimeTotal];
      if (v15 < 0.0)
      {
        v16 = NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
        v17 = [v16 stringByAppendingString:@" "];
LABEL_19:

        v60 = v17;
        v28 = [CLKSimpleTextProvider textProviderWithText:v17];
        v29 = NTKMoveNonGradientTextColor();
        [v28 setTintColor:v29];

        v59 = v28;
        [v3 setObject:v28 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveText"];
        [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeTotal];
        if (v30 >= 0.0)
        {
          v31 = [NSNumber numberWithDouble:?];
          v33 = [v62 stringFromNumber:v31];
          v32 = [v33 stringByAppendingString:@" "];
        }

        else
        {
          v31 = NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
          v32 = [v31 stringByAppendingString:@" "];
        }

        v58 = v32;
        v34 = [CLKSimpleTextProvider textProviderWithText:v32];
        v35 = NTKExerciseNonGradientTextColor();
        [v34 setTintColor:v35];

        v57 = v34;
        [v3 setObject:v34 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseText"];
        v36 = [(FIUIActivityDataModel *)self->_dataModel appleStandHoursTotal];
        if ((v36 & 0x8000000000000000) != 0)
        {
          v37 = NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
          v40 = [v37 stringByAppendingString:@" "];
        }

        else
        {
          v37 = [NSNumber numberWithDouble:v36];
          v38 = [v62 stringFromNumber:v37];
          v39 = [v38 stringByAppendingString:@" "];

          v40 = v39;
        }

        v41 = v40;
        v42 = [CLKSimpleTextProvider textProviderWithText:v40];
        v43 = NTKStandNonGradientTextColor();
        [v42 setTintColor:v43];

        [v3 setObject:v42 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewSleepText"];
        v44 = [NSNumber numberWithBool:[(FIUIActivityDataModel *)self->_dataModel wheelchairUser]];
        [v3 setObject:v44 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewWheelchairUseKey"];

        v45 = [(FIUIActivityDataModel *)self->_dataModel activeEnergyChartData];

        if (v45)
        {
          v46 = [(FIUIActivityDataModel *)self->_dataModel activityMoveMode];
          v47 = self->_dataModel;
          if (v46 == &dword_0 + 2)
          {
            [(FIUIActivityDataModel *)v47 appleMoveTimeChartData];
          }

          else
          {
            [(FIUIActivityDataModel *)v47 activeEnergyChartData];
          }
          v48 = ;
          [v3 setObject:v48 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewMoveChartData"];
        }

        v49 = [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeChartData];

        if (v49)
        {
          v50 = [(FIUIActivityDataModel *)self->_dataModel appleExerciseTimeChartData];
          [v3 setObject:v50 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewExerciseChartData"];
        }

        v51 = [(FIUIActivityDataModel *)self->_dataModel appleStandHourChartData];

        if (v51)
        {
          v52 = [(FIUIActivityDataModel *)self->_dataModel appleStandHourChartData];
          [v3 setObject:v52 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewStandChartData"];
        }

        v6 = 0;
        v19 = v9;
        v4 = v61;
        goto LABEL_35;
      }

      v16 = [NSNumber numberWithDouble:?];
      v27 = [v62 stringFromNumber:v16];
    }

    else
    {
      v16 = [(FIUIActivityDataModel *)dataModel activeEnergyTotal];
      if (v16)
      {
        v20 = +[FIUIActivityDataModel formattingManager];
        v21 = [v20 unitManager];
        v22 = [v21 userActiveEnergyBurnedUnit];
        [v16 doubleValueForUnit:v22];
        v24 = floor(v23);

        v25 = [NSNumber numberWithDouble:v24];
        v26 = [v62 stringFromNumber:v25];
        v17 = [v26 stringByAppendingString:@" "];

LABEL_18:
        goto LABEL_19;
      }

      v27 = NLActivityComplicationLocalizedString(@"ACTIVITY_MIN_INVALID_DATA");
    }

    v25 = v27;
    v17 = [v27 stringByAppendingString:@" "];
    goto LABEL_18;
  }

  if (v5 != 1)
  {
    goto LABEL_36;
  }

  v7 = @"ACTIVITY_SIGNATURE_RECTANGLE_ACTIVITY";
LABEL_12:
  v18 = NLActivityComplicationLocalizedString(v7);
  v19 = [v18 stringByAppendingString:@" "];

  v10 = [CLKSimpleTextProvider textProviderWithText:v19];
  [v10 setTintColor:v4];
  [v3 setObject:v10 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewActivityText"];
LABEL_35:

LABEL_36:
  v53 = [NSNumber numberWithBool:v6];
  [v3 setObject:v53 forKeyedSubscript:@"NLActivityRichComplicationRectangularViewHideAccentViews"];

  v54 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  [v54 setMetadata:v3];
  v55 = [CLKComplicationTemplateGraphicRectangularFullImage templateWithImageProvider:v54];

  return v55;
}

- (int64_t)availabilityState
{
  if ([(FIUIActivityDataModel *)self->_dataModel deviceLocked])
  {
    _HKInitializeLogging();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ device is locked", &v21, 0xCu);
    }

    return 2;
  }

  else if ([(FIUIActivityDataModel *)self->_dataModel databaseLoading])
  {
    _HKInitializeLogging();
    v8 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v21 = 138412290;
      v22 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ databse is loading", &v21, 0xCu);
    }

    return 1;
  }

  else
  {
    v12 = [(FIUIActivityDataModel *)self->_dataModel userHasDoneActivitySetup];
    _HKInitializeLogging();
    v13 = HKLogActivity;
    v14 = os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = v13;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v21 = 138412290;
        v22 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%@ Activity state is available", &v21, 0xCu);
      }

      return 0;
    }

    else
    {
      if (v14)
      {
        v18 = v13;
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%@ Activity is not setup yet", &v21, 0xCu);
      }

      return 3;
    }
  }
}

+ (id)_LocalizedStringWithActiveEnergy:(id)a3
{
  v3 = a3;
  v4 = +[FIUIActivityDataModel formattingManager];
  v5 = [v4 localizedStringWithActiveEnergy:v3];

  return v5;
}

@end