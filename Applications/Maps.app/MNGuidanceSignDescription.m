@interface MNGuidanceSignDescription
- (BOOL)isEquivalentToSignDescription:(id)a3;
@end

@implementation MNGuidanceSignDescription

- (BOOL)isEquivalentToSignDescription:(id)a3
{
  v4 = a3;
  if (([(MNGuidanceSignDescription *)self isEqual:v4]& 1) != 0)
  {
    goto LABEL_2;
  }

  v6 = [(MNGuidanceSignDescription *)self uniqueID];
  v7 = [v4 uniqueID];
  v8 = v6;
  v9 = v7;
  if (v8 | v9)
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_26;
    }
  }

  v11 = [(MNGuidanceSignDescription *)self isStaticText];
  if (v11 != [v4 isStaticText])
  {
    goto LABEL_26;
  }

  v12 = [(MNGuidanceSignDescription *)self distanceDetailLevel];
  if (v12 != [v4 distanceDetailLevel])
  {
    goto LABEL_26;
  }

  v13 = [(MNGuidanceSignDescription *)self titles];
  v14 = [v13 firstObject];
  v15 = [v4 titles];
  v16 = [v15 firstObject];
  v17 = v14;
  v18 = v16;
  if (v17 | v18)
  {
    v19 = [v17 isEqual:v18];

    if (!v19)
    {

      goto LABEL_26;
    }
  }

  v82 = v15;
  v83 = v13;
  v81 = [(MNGuidanceSignDescription *)self details];
  v20 = [v81 firstObject];
  v80 = [v4 details];
  v21 = [v80 firstObject];
  v22 = v20;
  v84 = v21;
  v85 = v22;
  if (v22 | v84)
  {
    v23 = [v22 isEqual:v84];

    if (!v23)
    {

      goto LABEL_26;
    }
  }

  v24 = [(MNGuidanceSignDescription *)self artworkOverride];
  v25 = [v4 artworkOverride];
  v26 = v24;
  v78 = v25;
  v79 = v26;
  if (v26 | v78 && (v27 = [v26 isEqual:v78], v78, v26, !v27))
  {
    v52 = 1;
  }

  else
  {
    v28 = [(MNGuidanceSignDescription *)self junction];
    v29 = [v4 junction];
    v30 = v28;
    v76 = v29;
    v77 = v30;
    if (v30 | v76 && (v31 = [v30 isEqual:v76], v76, v77, !v31))
    {
      v52 = 1;
    }

    else
    {
      v72 = [(MNGuidanceSignDescription *)self primaryStrings];
      v32 = [v72 firstObject];
      v73 = [v4 primaryStrings];
      v33 = [v73 firstObject];
      v34 = v32;
      v74 = v33;
      v75 = v34;
      if (v34 | v74 && (v35 = [v34 isEqual:v74], v74, v75, !v35))
      {
        v52 = 1;
      }

      else
      {
        v36 = [(MNGuidanceSignDescription *)self secondaryStrings];
        v37 = [v36 firstObject];
        v70 = [v4 secondaryStrings];
        v38 = [v70 firstObject];
        v39 = v37;
        v40 = v38;
        v41 = v39;
        v71 = v40;
        if ((!(v39 | v40) || (v42 = [v39 isEqual:v40], v71, v41, v42)) && (v43 = -[MNGuidanceSignDescription shieldID](self, "shieldID"), v43 == objc_msgSend(v4, "shieldID")))
        {
          v69 = v41;
          v44 = [(MNGuidanceSignDescription *)self shieldStringID];
          v45 = [v4 shieldStringID];
          v46 = v44;
          v47 = v45;
          v68 = v47;
          if (v46 | v47 && (v48 = v47, v49 = [v46 isEqual:v47], v48, v46, !v49))
          {
            v52 = 1;
            v41 = v69;
          }

          else
          {
            v50 = [(MNGuidanceSignDescription *)self shieldText:v46];
            v51 = [v4 shieldText];
            if (v50 | v51)
            {
              v54 = v51;
              v55 = [v50 isEqual:v51];
              v51 = v54;
              v52 = v55 ^ 1;
            }

            else
            {
              v52 = 0;
            }

            v41 = v69;

            v46 = v67;
          }
        }

        else
        {
          v52 = 1;
        }
      }
    }
  }

  if (v52)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v56 = [(MNGuidanceSignDescription *)self primaryStrings];
  v57 = [v56 firstObject];
  if (!v57)
  {

LABEL_46:
    v61 = [(MNGuidanceSignDescription *)self variableOverrides];
    v62 = [v61 objectForKeyedSubscript:@"{distance}"];

    v63 = [v4 variableOverrides];
    v64 = [v63 objectForKeyedSubscript:@"{distance}"];

    v8 = v62;
    v65 = v64;
    if (!(v8 | v65))
    {
      v9 = 0;
      v8 = 0;
LABEL_49:
      v5 = 1;
      goto LABEL_27;
    }

    v9 = v65;
    v66 = [v8 isEqual:v65];

    if (v66)
    {
      goto LABEL_49;
    }

    if ((v8 == 0) != (v9 != 0))
    {
      [(MNGuidanceSignDescription *)self distanceDetailLevel];
      v5 = sub_100C168BC(v8, v9);
      goto LABEL_27;
    }

LABEL_26:
    v5 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v58 = v57;
  v59 = [(MNGuidanceSignDescription *)self secondaryStrings];
  v60 = [v59 firstObject];

  if (!v60)
  {
    goto LABEL_46;
  }

LABEL_2:
  v5 = 1;
LABEL_28:

  return v5;
}

@end