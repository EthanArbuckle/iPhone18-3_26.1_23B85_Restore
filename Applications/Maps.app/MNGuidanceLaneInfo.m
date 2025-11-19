@interface MNGuidanceLaneInfo
- (BOOL)isEquivalentToLaneInfo:(id)a3;
@end

@implementation MNGuidanceLaneInfo

- (BOOL)isEquivalentToLaneInfo:(id)a3
{
  v4 = a3;
  if (([(MNGuidanceLaneInfo *)self isEqual:v4]& 1) != 0)
  {
    goto LABEL_2;
  }

  v6 = [(MNGuidanceLaneInfo *)self uniqueID];
  v7 = [v4 uniqueID];
  v8 = v6;
  v9 = v7;
  if (v8 | v9)
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_18;
    }
  }

  v11 = [(MNGuidanceLaneInfo *)self distanceDetailLevel];
  if (v11 != [v4 distanceDetailLevel])
  {
    goto LABEL_18;
  }

  v12 = [(MNGuidanceLaneInfo *)self titles];
  v13 = [v12 firstObject];
  v14 = [v4 titles];
  v15 = [v14 firstObject];
  v16 = v13;
  v17 = v15;
  if (v16 | v17)
  {
    v18 = [v16 isEqual:v17];

    if (!v18)
    {

      goto LABEL_18;
    }
  }

  v59 = v12;
  v58 = [(MNGuidanceLaneInfo *)self instructions];
  v19 = [v58 firstObject];
  v57 = [v4 instructions];
  v20 = [v57 firstObject];
  v21 = v19;
  v22 = v20;
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
  v56 = v14;
  v26 = [(MNGuidanceLaneInfo *)self primaryStrings];
  v27 = [v26 firstObject];
  v52 = [v4 primaryStrings];
  v28 = [v52 firstObject];
  v29 = v27;
  v30 = v28;
  if (v29 | v30 && (v31 = [v29 isEqual:v30], v30, v29, !v31))
  {
    v35 = 1;
    v36 = v59;
  }

  else
  {
    v50 = v26;
    v51 = v16;
    v49 = [(MNGuidanceLaneInfo *)self secondaryStrings];
    v32 = [v49 firstObject];
    v33 = [v4 secondaryStrings];
    v34 = [v33 firstObject];
    if (v32 | v34)
    {
      v35 = [v32 isEqual:v34] ^ 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = v59;
    v26 = v50;
    v16 = v51;
  }

  if (v35)
  {
    v5 = 0;
    goto LABEL_20;
  }

  v38 = [(MNGuidanceLaneInfo *)self primaryStrings];
  v39 = [v38 firstObject];
  if (!v39)
  {

LABEL_28:
    v43 = [(MNGuidanceLaneInfo *)self variableOverrides];
    v44 = [v43 objectForKeyedSubscript:@"{distance}"];

    v45 = [v4 variableOverrides];
    v46 = [v45 objectForKeyedSubscript:@"{distance}"];

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

  v40 = v39;
  v41 = [(MNGuidanceLaneInfo *)self secondaryStrings];
  v42 = [v41 firstObject];

  if (!v42)
  {
    goto LABEL_28;
  }

LABEL_2:
  v5 = 1;
LABEL_20:

  return v5;
}

@end