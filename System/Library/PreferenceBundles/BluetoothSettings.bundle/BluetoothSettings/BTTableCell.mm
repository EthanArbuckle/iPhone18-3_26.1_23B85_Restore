@interface BTTableCell
- (BTTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDeviceStatePaired:(BOOL)a3 andConnected:(BOOL)a4 andPendingSetup:(BOOL)a5;
@end

@implementation BTTableCell

- (BTTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = BTTableCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:1 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    v8 = [(BTTableCell *)v5 contentView];
    [v8 addSubview:v5->_spinner];
  }

  return v5;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = BTTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setDeviceStatePaired:(BOOL)a3 andConnected:(BOOL)a4 andPendingSetup:(BOOL)a5
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
  {
    v6 = 5;
  }

  else
  {
    v6 = 3;
  }

  if (a3)
  {
    v5 = v6;
  }

  if (a4)
  {
    v7 = 7;
  }

  else
  {
    v7 = 6;
  }

  if (a5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  [(BTTableCell *)self setDeviceState:v8];
}

- (void)layoutSubviews
{
  v86[1] = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = BTTableCell;
  [(PSTableCell *)&v84 layoutSubviews];
  v3 = [(PSTableCell *)self titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = 6.0;
  v13 = 6.0;
  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v13 = v14;
  }

  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v12 = v15;
  }

  v16 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if ([(BTTableCell *)self state]== 1 || [(BTTableCell *)self state]== 4)
  {
    v17 = [(PSTableCell *)self valueLabel];
    [v17 setAlpha:0.0];

    v18 = [(BTTableCell *)self spinner];
    [v18 frame];
    v20 = v19;
    v22 = v21;

    if (!v16)
    {
      v23 = [(BTTableCell *)self contentView];
      [v23 frame];
      v12 = v24 - v20 - v12;
    }

    v25 = [(BTTableCell *)self contentView];
    [v25 frame];
    v27 = floor((v26 - v22) * 0.5);

    v87.origin.x = v12;
    v87.origin.y = v27;
    v87.size.width = v20;
    v87.size.height = v22;
    v88 = CGRectIntegral(v87);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    v32 = [(BTTableCell *)self spinner];
    [v32 setFrame:{x, y, width, height}];

    v33 = [(BTTableCell *)self spinner];
    [v33 startAnimating];

    v34 = [(BTTableCell *)self contentView];
    [v34 frame];
    v36 = v35 - v20;
    v37 = [(BTTableCell *)self contentView];
    [v37 layoutMargins];
    v9 = v36 - v38 - v13 + -12.0;
  }

  else
  {
    v52 = [(BTTableCell *)self spinner];
    [v52 stopAnimating];

    v53 = [(PSTableCell *)self valueLabel];
    [v53 setAlpha:1.0];

    v54 = [(BTTableCell *)self traitCollection];
    v55 = [v54 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v55);

    if (IsAccessibilityCategory)
    {
      goto LABEL_14;
    }

    v57 = [(PSTableCell *)self valueLabel];
    v58 = [v57 text];
    v59 = [(BTTableCell *)self contentView];
    [v59 bounds];
    v61 = v60;
    v63 = v62;
    v85 = *MEMORY[0x277D740A8];
    v64 = [(PSTableCell *)self valueLabel];
    v65 = [v64 font];
    v86[0] = v65;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    [v58 boundingRectWithSize:0 options:v66 attributes:0 context:{v61, v63}];
    v68 = v67;
    v70 = v69;

    v71 = ceil(v68);
    v72 = ceil(v70);
    v73 = v13;
    if (!v16)
    {
      v74 = [(BTTableCell *)self contentView];
      [v74 frame];
      v73 = v75 - v71 - v13;
    }

    v91.origin.x = v73;
    v91.origin.y = v7;
    v91.size.width = v71;
    v91.size.height = v72;
    v92 = CGRectIntegral(v91);
    v76 = v92.origin.x;
    v77 = v92.origin.y;
    v78 = v92.size.width;
    v79 = v92.size.height;
    v80 = [(PSTableCell *)self valueLabel];
    [v80 setFrame:{v76, v77, v78, v79}];

    v34 = [(BTTableCell *)self contentView];
    [v34 frame];
    v82 = v81 - v71;
    v37 = [(BTTableCell *)self contentView];
    [v37 layoutMargins];
    v9 = floor(v82 - v83 - v13 + -12.0);
  }

  v39 = [(BTTableCell *)self contentView];
  v40 = v39;
  if (v16)
  {
    [v39 size];
    v42 = v41 - v9;
    v43 = [(BTTableCell *)self contentView];
    [v43 layoutMargins];
    v5 = v42 - v44;
  }

  else
  {
    [v39 layoutMargins];
    v5 = v45;
  }

LABEL_14:
  v89.origin.x = v5;
  v89.origin.y = v7;
  v89.size.width = v9;
  v89.size.height = v11;
  v90 = CGRectIntegral(v89);
  v46 = v90.origin.x;
  v47 = v90.origin.y;
  v48 = v90.size.width;
  v49 = v90.size.height;
  v50 = [(PSTableCell *)self titleLabel];
  [v50 setFrame:{v46, v47, v48, v49}];

  v51 = *MEMORY[0x277D85DE8];
}

@end