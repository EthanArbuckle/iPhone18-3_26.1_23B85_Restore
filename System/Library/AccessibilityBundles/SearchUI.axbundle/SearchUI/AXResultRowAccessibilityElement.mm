@interface AXResultRowAccessibilityElement
- (AXResultRowAccessibilityElement)initWithAccessibilityContainer:(id)a3 label1:(id)a4 label2:(id)a5 label3:(id)a6;
- (CGRect)accessibilityFrame;
@end

@implementation AXResultRowAccessibilityElement

- (AXResultRowAccessibilityElement)initWithAccessibilityContainer:(id)a3 label1:(id)a4 label2:(id)a5 label3:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AXResultRowAccessibilityElement;
  v14 = [(AXResultRowAccessibilityElement *)&v17 initWithAccessibilityContainer:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_label1, a4);
    objc_storeStrong(&v15->_label2, a5);
    objc_storeStrong(&v15->_label3, a6);
  }

  return v15;
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXResultRowAccessibilityElement *)self accessibilityContainer];
  NSClassFromString(&cfstr_Uitableviewcel.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIView *)v3 safeValueForKey:@"realTableViewCell"];

    v3 = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UILabel *)self->_label1 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UILabel *)self->_label1 superview];
    [(UIView *)v3 convertRect:v13 fromView:v6, v8, v10, v12];
    v62 = v15;
    v63 = v14;
    v60 = v17;
    v61 = v16;

    [(UILabel *)self->_label2 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(UILabel *)self->_label2 superview];
    [(UIView *)v3 convertRect:v26 fromView:v19, v21, v23, v25];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    [(UILabel *)self->_label3 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(UILabel *)self->_label3 superview];
    [(UIView *)v3 convertRect:v43 fromView:v36, v38, v40, v42];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v65.origin.y = v62;
    v65.origin.x = v63;
    v65.size.height = v60;
    v65.size.width = v61;
    v70.origin.x = v28;
    v70.origin.y = v30;
    v70.size.width = v32;
    v70.size.height = v34;
    v66 = CGRectUnion(v65, v70);
    v71.origin.x = v45;
    v71.origin.y = v47;
    v71.size.width = v49;
    v71.size.height = v51;
    v67 = CGRectUnion(v66, v71);
    v68 = UIAccessibilityConvertFrameToScreenCoordinates(v67, v3);
  }

  else
  {
    v64.receiver = self;
    v64.super_class = AXResultRowAccessibilityElement;
    [(AXResultRowAccessibilityElement *)&v64 accessibilityFrame];
  }

  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;

  v56 = x;
  v57 = y;
  v58 = width;
  v59 = height;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

@end