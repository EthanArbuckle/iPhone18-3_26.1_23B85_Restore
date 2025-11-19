@interface CRLInspectorTextFieldNumberFormatter
+ (void)initialize;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CRLInspectorTextFieldNumberFormatter

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v3 = qword_101A35408;
    qword_101A35408 = v2;

    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"0 pt" value:0 table:0];
    [qword_101A35408 crl_setFormat:v5];

    v6 = [CRLAccessibilityValueFormat alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"0" value:0 table:0];
    v9 = CRLAccessibilityStringsDictKey(@"inspector.field.points");
    v10 = [(CRLAccessibilityValueFormat *)v6 initWithNumberFormat:v8 andUnitStringsDictKey:v9];
    [qword_101A35408 setCrlaxValueFormat:v10];

    [qword_101A35408 setCrlaxRulerUnitType:2];
    [qword_101A35408 setLenient:1];
    v11 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v12 = qword_101A35410;
    qword_101A35410 = v11;

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"0.## pt" value:0 table:0];
    [qword_101A35410 crl_setFormat:v14];

    v15 = [CRLAccessibilityValueFormat alloc];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"0.##" value:0 table:0];
    v18 = CRLAccessibilityStringsDictKey(@"inspector.field.points");
    v19 = [(CRLAccessibilityValueFormat *)v15 initWithNumberFormat:v17 andUnitStringsDictKey:v18];
    [qword_101A35410 setCrlaxValueFormat:v19];

    [qword_101A35410 setCrlaxRulerUnitType:2];
    [qword_101A35410 setLenient:1];
    v20 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v21 = qword_101A35418;
    qword_101A35418 = v20;

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"0 px" value:0 table:0];
    [qword_101A35418 crl_setFormat:v23];

    v24 = [CRLAccessibilityValueFormat alloc];
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"0" value:0 table:0];
    v27 = CRLAccessibilityStringsDictKey(@"inspector.field.pixels");
    v28 = [(CRLAccessibilityValueFormat *)v24 initWithNumberFormat:v26 andUnitStringsDictKey:v27];
    [qword_101A35418 setCrlaxValueFormat:v28];

    [qword_101A35418 setCrlaxRulerUnitType:4];
    [qword_101A35418 setLenient:1];
    v29 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v30 = qword_101A35420;
    qword_101A35420 = v29;

    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"0.## px" value:0 table:0];
    [qword_101A35420 crl_setFormat:v32];

    v33 = [CRLAccessibilityValueFormat alloc];
    v34 = +[NSBundle mainBundle];
    v35 = [v34 localizedStringForKey:@"0.##" value:0 table:0];
    v36 = CRLAccessibilityStringsDictKey(@"inspector.field.pixels");
    v37 = [(CRLAccessibilityValueFormat *)v33 initWithNumberFormat:v35 andUnitStringsDictKey:v36];
    [qword_101A35420 setCrlaxValueFormat:v37];

    [qword_101A35420 setCrlaxRulerUnitType:4];
    [qword_101A35420 setLenient:1];
    v38 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v39 = qword_101A35428;
    qword_101A35428 = v38;

    v40 = qword_101A35428;
    v41 = [NSNumber numberWithDouble:1.0 / 72.0];
    [v40 setMultiplier:v41];

    v42 = +[NSBundle mainBundle];
    v43 = [v42 localizedStringForKey:@"0.## in" value:0 table:0];
    [qword_101A35428 crl_setFormat:v43];

    v44 = [CRLAccessibilityValueFormat alloc];
    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"0.##" value:0 table:0];
    v47 = CRLAccessibilityStringsDictKey(@"inspector.field.inches");
    v48 = [(CRLAccessibilityValueFormat *)v44 initWithNumberFormat:v46 andUnitStringsDictKey:v47];
    [qword_101A35428 setCrlaxValueFormat:v48];

    [qword_101A35428 setCrlaxRulerUnitType:0];
    [qword_101A35428 setLenient:1];
    v49 = objc_alloc_init(CRLInspectorTextFieldNumberFormatter);
    v50 = qword_101A35430;
    qword_101A35430 = v49;

    v51 = qword_101A35430;
    v52 = [NSNumber numberWithDouble:1.0 / 28.346457];
    [v51 setMultiplier:v52];

    v53 = +[NSBundle mainBundle];
    v54 = [v53 localizedStringForKey:@"0.## cm" value:0 table:0];
    [qword_101A35430 crl_setFormat:v54];

    v55 = [CRLAccessibilityValueFormat alloc];
    v56 = +[NSBundle mainBundle];
    v57 = [v56 localizedStringForKey:@"0.##" value:0 table:0];
    v58 = CRLAccessibilityStringsDictKey(@"inspector.field.centimeters");
    v59 = [(CRLAccessibilityValueFormat *)v55 initWithNumberFormat:v57 andUnitStringsDictKey:v58];
    [qword_101A35430 setCrlaxValueFormat:v59];

    [qword_101A35430 setCrlaxRulerUnitType:1];
    [qword_101A35430 setLenient:1];
    v60 = objc_alloc_init(CRLInspectorTextFieldPointLengthFormatter);
    v61 = qword_101A35438;
    qword_101A35438 = v60;

    [qword_101A35438 setLenient:1];
    v62 = objc_alloc_init(CRLInspectorTextFieldPrecisePointLengthFormatter);
    v63 = qword_101A35440;
    qword_101A35440 = v62;

    [qword_101A35440 setLenient:1];
    v64 = objc_alloc_init(CRLInspectorTextFieldLengthFormatter);
    v65 = qword_101A35448;
    qword_101A35448 = v64;

    [qword_101A35448 setLenient:1];
    v66 = objc_alloc_init(CRLInspectorTextFieldAngleFormatter);
    v67 = qword_101A35450;
    qword_101A35450 = v66;

    [qword_101A35450 setLenient:1];
    v68 = objc_alloc_init(CRLInspectorTextFieldPercentFormatter);
    v69 = qword_101A35458;
    qword_101A35458 = v68;

    [qword_101A35458 setLenient:1];
    v70 = objc_alloc_init(CRLSecondsDurationFormatter);
    v71 = qword_101A35460;
    qword_101A35460 = v70;

    [qword_101A35460 setLenient:1];
    v72 = objc_alloc_init(CRLVerboseSecondsDurationFormatter);
    v73 = qword_101A35468;
    qword_101A35468 = v72;

    v74 = qword_101A35468;

    [v74 setLenient:1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CRLInspectorTextFieldNumberFormatter;
  v4 = [(CRLInspectorTextFieldNumberFormatter *)&v7 copyWithZone:a3];
  v5 = [(CRLInspectorTextFieldAbstractNumberFormatter *)self crlaxValueFormat];
  [v4 setCrlaxValueFormat:v5];

  return v4;
}

@end