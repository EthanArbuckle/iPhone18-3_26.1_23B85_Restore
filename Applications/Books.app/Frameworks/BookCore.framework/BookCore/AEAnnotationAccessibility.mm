@interface AEAnnotationAccessibility
- (BOOL)imaxHasNote;
- (BOOL)thaxAnnotationIsUnderline;
- (NSString)imaxAnnotationLocation;
- (NSString)imaxAnnotationNote;
- (NSString)imaxAnnotationStyleDescription;
- (NSString)imaxWholeAnnotationDescription;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation AEAnnotationAccessibility

- (NSString)imaxAnnotationLocation
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEAnnotationAccessibility *)self imaxValueForKey:@"annotationLocation"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (NSString)imaxWholeAnnotationDescription
{
  thaxAnnotationStyle = [(AEAnnotationAccessibility *)self thaxAnnotationStyle];
  if (thaxAnnotationStyle <= 2)
  {
    if (thaxAnnotationStyle == 1)
    {
      imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
      v5 = @"highlight.color.green";
      v6 = @"highlight.color.green.with.note";
      goto LABEL_14;
    }

    if (thaxAnnotationStyle == 2)
    {
      imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
      v5 = @"highlight.color.blue";
      v6 = @"highlight.color.blue.with.note";
      goto LABEL_14;
    }
  }

  else
  {
    switch(thaxAnnotationStyle)
    {
      case 3:
        imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
        v5 = @"highlight.color.yellow";
        v6 = @"highlight.color.yellow.with.note";
        goto LABEL_14;
      case 4:
        imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
        v5 = @"highlight.color.pink";
        v6 = @"highlight.color.pink.with.note";
        goto LABEL_14;
      case 5:
        imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
        v5 = @"highlight.color.purple";
        v6 = @"highlight.color.purple.with.note";
        goto LABEL_14;
    }
  }

  if ([(AEAnnotationAccessibility *)self thaxAnnotationIsUnderline])
  {
    imaxHasNote = [(AEAnnotationAccessibility *)self imaxHasNote];
    v5 = @"highlight.underlined.text";
    v6 = @"highlight.underlined.text.with.note";
LABEL_14:
    if (imaxHasNote)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = IMCommonCoreAccessibilityLocalizedString(v7);
    if (v8)
    {
      goto LABEL_22;
    }
  }

  if ([(AEAnnotationAccessibility *)self imaxHasNote])
  {
    v9 = @"highlight.generic.with.note";
  }

  else
  {
    v9 = @"highlight.generic";
  }

  v8 = IMCommonCoreAccessibilityLocalizedString(v9);
LABEL_22:

  return v8;
}

- (NSString)imaxAnnotationStyleDescription
{
  v3 = [(AEAnnotationAccessibility *)self thaxAnnotationStyle]- 1;
  if (v3 < 5)
  {
    v4 = *(&off_2CC418 + v3);
LABEL_5:
    v5 = IMCommonCoreAccessibilityLocalizedString(v4);
    goto LABEL_7;
  }

  if ([(AEAnnotationAccessibility *)self thaxAnnotationIsUnderline])
  {
    v4 = @"highlight.underlined.text";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (NSString)imaxAnnotationNote
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEAnnotationAccessibility *)self imaxValueForKey:@"annotationNote"];
  v5 = __IMAccessibilityCastAsClass(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

- (BOOL)imaxHasNote
{
  imaxAnnotationNote = [(AEAnnotationAccessibility *)self imaxAnnotationNote];
  v3 = [imaxAnnotationNote length] != 0;

  return v3;
}

- (id)accessibilityLabel
{
  imaxWholeAnnotationDescription = [(AEAnnotationAccessibility *)self imaxWholeAnnotationDescription];
  v4 = [(AEAnnotationAccessibility *)self imaxValueForKey:@"annotationRepresentativeText"];
  v12 = __IMAccessibilityStringForVariables(imaxWholeAnnotationDescription, v5, v6, v7, v8, v9, v10, v11, v4);

  return v12;
}

- (id)accessibilityValue
{
  v2 = [(AEAnnotationAccessibility *)self imaxValueForKey:@"annotationNote"];
  if ([v2 length])
  {
    v3 = IMCommonCoreAccessibilityLocalizedString(@"note.format %@");
    v4 = [NSString stringWithFormat:v3, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)thaxAnnotationIsUnderline
{
  v2 = [(AEAnnotationAccessibility *)self imaxValueForKey:@"annotationIsUnderline"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end