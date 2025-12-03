@interface MNGuidanceLaneInfo
- (BOOL)isEquivalentToLaneInfo:(id)info;
@end

@implementation MNGuidanceLaneInfo

- (BOOL)isEquivalentToLaneInfo:(id)info
{
  infoCopy = info;
  if (([(MNGuidanceLaneInfo *)self isEqual:infoCopy]& 1) != 0)
  {
    goto LABEL_2;
  }

  uniqueID = [(MNGuidanceLaneInfo *)self uniqueID];
  uniqueID2 = [infoCopy uniqueID];
  v8 = uniqueID;
  v9 = uniqueID2;
  if (v8 | v9)
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  distanceDetailLevel = [(MNGuidanceLaneInfo *)self distanceDetailLevel];
  if (distanceDetailLevel != [infoCopy distanceDetailLevel])
  {
    goto LABEL_18;
  }

  titles = [(MNGuidanceLaneInfo *)self titles];
  firstObject = [titles firstObject];
  titles2 = [infoCopy titles];
  firstObject2 = [titles2 firstObject];
  v16 = firstObject;
  v17 = firstObject2;
  if (v16 | v17)
  {
    v18 = [v16 isEqual:v17];

    if (!v18)
    {

      goto LABEL_18;
    }
  }

  v59 = titles;
  instructions = [(MNGuidanceLaneInfo *)self instructions];
  firstObject3 = [instructions firstObject];
  instructions2 = [infoCopy instructions];
  firstObject4 = [instructions2 firstObject];
  v21 = firstObject3;
  v22 = firstObject4;
  v23 = v21;
  v24 = v22;
  if (v21 | v22)
  {
    v25 = [v21 isEqual:v22];

    if (!v25)
    {

      goto LABEL_18;
    }
  }

  v53 = v24;
  v54 = v23;
  v55 = v17;
  v56 = titles2;
  primaryStrings = [(MNGuidanceLaneInfo *)self primaryStrings];
  firstObject5 = [primaryStrings firstObject];
  primaryStrings2 = [infoCopy primaryStrings];
  firstObject6 = [primaryStrings2 firstObject];
  v29 = firstObject5;
  v30 = firstObject6;
  if (v29 | v30 && (v31 = [v29 isEqual:v30], v30, v29, !v31))
  {
    v35 = 1;
    v36 = v59;
  }

  else
  {
    v50 = primaryStrings;
    v51 = v16;
    secondaryStrings = [(MNGuidanceLaneInfo *)self secondaryStrings];
    firstObject7 = [secondaryStrings firstObject];
    secondaryStrings2 = [infoCopy secondaryStrings];
    firstObject8 = [secondaryStrings2 firstObject];
    if (firstObject7 | firstObject8)
    {
      v35 = [firstObject7 isEqual:firstObject8] ^ 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = v59;
    primaryStrings = v50;
    v16 = v51;
  }

  if (v35)
  {
    v5 = 0;
    goto LABEL_20;
  }

  primaryStrings3 = [(MNGuidanceLaneInfo *)self primaryStrings];
  firstObject9 = [primaryStrings3 firstObject];
  if (!firstObject9)
  {

LABEL_28:
    variableOverrides = [(MNGuidanceLaneInfo *)self variableOverrides];
    v44 = [variableOverrides objectForKeyedSubscript:@"{distance}"];

    variableOverrides2 = [infoCopy variableOverrides];
    v46 = [variableOverrides2 objectForKeyedSubscript:@"{distance}"];

    v8 = v44;
    v47 = v46;
    if (!(v8 | v47))
    {
      v9 = 0;
      v8 = 0;
LABEL_31:
      v5 = 1;
      goto LABEL_19;
    }

    v9 = v47;
    v48 = [v8 isEqual:v47];

    if (v48)
    {
      goto LABEL_31;
    }

    if ((v8 == 0) != (v9 != 0))
    {
      [(MNGuidanceLaneInfo *)self distanceDetailLevel];
      v5 = sub_100C168BC(v8, v9);
      goto LABEL_19;
    }

LABEL_18:
    v5 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v40 = firstObject9;
  secondaryStrings3 = [(MNGuidanceLaneInfo *)self secondaryStrings];
  firstObject10 = [secondaryStrings3 firstObject];

  if (!firstObject10)
  {
    goto LABEL_28;
  }

LABEL_2:
  v5 = 1;
LABEL_20:

  return v5;
}

@end