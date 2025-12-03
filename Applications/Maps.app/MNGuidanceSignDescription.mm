@interface MNGuidanceSignDescription
- (BOOL)isEquivalentToSignDescription:(id)description;
@end

@implementation MNGuidanceSignDescription

- (BOOL)isEquivalentToSignDescription:(id)description
{
  descriptionCopy = description;
  if (([(MNGuidanceSignDescription *)self isEqual:descriptionCopy]& 1) != 0)
  {
    goto LABEL_2;
  }

  uniqueID = [(MNGuidanceSignDescription *)self uniqueID];
  uniqueID2 = [descriptionCopy uniqueID];
  v8 = uniqueID;
  v9 = uniqueID2;
  if (v8 | v9)
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_26;
    }
  }

  isStaticText = [(MNGuidanceSignDescription *)self isStaticText];
  if (isStaticText != [descriptionCopy isStaticText])
  {
    goto LABEL_26;
  }

  distanceDetailLevel = [(MNGuidanceSignDescription *)self distanceDetailLevel];
  if (distanceDetailLevel != [descriptionCopy distanceDetailLevel])
  {
    goto LABEL_26;
  }

  titles = [(MNGuidanceSignDescription *)self titles];
  firstObject = [titles firstObject];
  titles2 = [descriptionCopy titles];
  firstObject2 = [titles2 firstObject];
  v17 = firstObject;
  v18 = firstObject2;
  if (v17 | v18)
  {
    v19 = [v17 isEqual:v18];

    if (!v19)
    {

      goto LABEL_26;
    }
  }

  v82 = titles2;
  v83 = titles;
  details = [(MNGuidanceSignDescription *)self details];
  firstObject3 = [details firstObject];
  details2 = [descriptionCopy details];
  firstObject4 = [details2 firstObject];
  v22 = firstObject3;
  v84 = firstObject4;
  v85 = v22;
  if (v22 | v84)
  {
    v23 = [v22 isEqual:v84];

    if (!v23)
    {

      goto LABEL_26;
    }
  }

  artworkOverride = [(MNGuidanceSignDescription *)self artworkOverride];
  artworkOverride2 = [descriptionCopy artworkOverride];
  v26 = artworkOverride;
  v78 = artworkOverride2;
  v79 = v26;
  if (v26 | v78 && (v27 = [v26 isEqual:v78], v78, v26, !v27))
  {
    v52 = 1;
  }

  else
  {
    junction = [(MNGuidanceSignDescription *)self junction];
    junction2 = [descriptionCopy junction];
    v30 = junction;
    v76 = junction2;
    v77 = v30;
    if (v30 | v76 && (v31 = [v30 isEqual:v76], v76, v77, !v31))
    {
      v52 = 1;
    }

    else
    {
      primaryStrings = [(MNGuidanceSignDescription *)self primaryStrings];
      firstObject5 = [primaryStrings firstObject];
      primaryStrings2 = [descriptionCopy primaryStrings];
      firstObject6 = [primaryStrings2 firstObject];
      v34 = firstObject5;
      v74 = firstObject6;
      v75 = v34;
      if (v34 | v74 && (v35 = [v34 isEqual:v74], v74, v75, !v35))
      {
        v52 = 1;
      }

      else
      {
        secondaryStrings = [(MNGuidanceSignDescription *)self secondaryStrings];
        firstObject7 = [secondaryStrings firstObject];
        secondaryStrings2 = [descriptionCopy secondaryStrings];
        firstObject8 = [secondaryStrings2 firstObject];
        v39 = firstObject7;
        v40 = firstObject8;
        v41 = v39;
        v71 = v40;
        if ((!(v39 | v40) || (v42 = [v39 isEqual:v40], v71, v41, v42)) && (v43 = -[MNGuidanceSignDescription shieldID](self, "shieldID"), v43 == objc_msgSend(descriptionCopy, "shieldID")))
        {
          v69 = v41;
          shieldStringID = [(MNGuidanceSignDescription *)self shieldStringID];
          shieldStringID2 = [descriptionCopy shieldStringID];
          v46 = shieldStringID;
          v47 = shieldStringID2;
          v68 = v47;
          if (v46 | v47 && (v48 = v47, v49 = [v46 isEqual:v47], v48, v46, !v49))
          {
            v52 = 1;
            v41 = v69;
          }

          else
          {
            v50 = [(MNGuidanceSignDescription *)self shieldText:v46];
            shieldText = [descriptionCopy shieldText];
            if (v50 | shieldText)
            {
              v54 = shieldText;
              v55 = [v50 isEqual:shieldText];
              shieldText = v54;
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

  primaryStrings3 = [(MNGuidanceSignDescription *)self primaryStrings];
  firstObject9 = [primaryStrings3 firstObject];
  if (!firstObject9)
  {

LABEL_46:
    variableOverrides = [(MNGuidanceSignDescription *)self variableOverrides];
    v62 = [variableOverrides objectForKeyedSubscript:@"{distance}"];

    variableOverrides2 = [descriptionCopy variableOverrides];
    v64 = [variableOverrides2 objectForKeyedSubscript:@"{distance}"];

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

  v58 = firstObject9;
  secondaryStrings3 = [(MNGuidanceSignDescription *)self secondaryStrings];
  firstObject10 = [secondaryStrings3 firstObject];

  if (!firstObject10)
  {
    goto LABEL_46;
  }

LABEL_2:
  v5 = 1;
LABEL_28:

  return v5;
}

@end