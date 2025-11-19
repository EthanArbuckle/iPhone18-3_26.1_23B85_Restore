@interface LPIndeterminateProgressSpinnerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPIndeterminateProgressSpinnerView)initWithHost:(id)a3 style:(id)a4 properties:(id)a5;
- (void)ensureIndicatorView;
- (void)ensureURLLabel;
- (void)layoutComponentView;
@end

@implementation LPIndeterminateProgressSpinnerView

- (LPIndeterminateProgressSpinnerView)initWithHost:(id)a3 style:(id)a4 properties:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = LPIndeterminateProgressSpinnerView;
  v11 = [(LPComponentView *)&v15 initWithHost:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_style, a4);
    objc_storeStrong(&v12->_properties, a5);
    v13 = v12;
  }

  return v12;
}

- (void)ensureIndicatorView
{
  if (!self->_indicatorView)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__LPIndeterminateProgressSpinnerView_ensureIndicatorView__block_invoke;
    v6[3] = &unk_1E7A36168;
    v6[4] = self;
    v3 = [[LPUIActivityIndicatorView alloc] initWithActivityIndicatorStyle:__57__LPIndeterminateProgressSpinnerView_ensureIndicatorView__block_invoke(v6)];
    v4 = [(LPIndeterminateProgressSpinnerStyle *)self->_style indicatorColor];

    if (v4)
    {
      v5 = [(LPIndeterminateProgressSpinnerStyle *)self->_style indicatorColor];
      [(LPUIActivityIndicatorView *)v3 setColor:v5];
    }

    [(LPUIActivityIndicatorView *)v3 startAnimating];
    objc_storeStrong(&self->_indicatorView, v3);
    [(LPIndeterminateProgressSpinnerView *)self addSubview:self->_indicatorView];
  }
}

uint64_t __57__LPIndeterminateProgressSpinnerView_ensureIndicatorView__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) indicatorColor];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 432) useLargeIndicatorStyle];

    if (v4)
    {
      return 10;
    }
  }

  v6 = [*(*(a1 + 32) + 432) indicatorColor];

  if (v6)
  {
    return 9;
  }

  if ([*(*(a1 + 32) + 432) useLargeIndicatorStyle])
  {
    return 101;
  }

  return 100;
}

- (void)ensureURLLabel
{
  if (!self->_text)
  {
    v3 = [(LPIndeterminateProgressSpinnerPresentationProperties *)self->_properties text];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [LPTextView alloc];
      v6 = [(LPComponentView *)self host];
      v7 = objc_alloc(MEMORY[0x1E696AAB0]);
      v8 = [(LPIndeterminateProgressSpinnerPresentationProperties *)self->_properties text];
      v9 = [v7 initWithString:v8];
      v10 = [(LPIndeterminateProgressSpinnerStyle *)self->_style label];
      v11 = [(LPTextView *)v5 initWithHost:v6 text:v9 style:v10];
      text = self->_text;
      self->_text = v11;

      v13 = self->_text;

      [(LPIndeterminateProgressSpinnerView *)self addSubview:v13];
    }
  }
}

- (void)layoutComponentView
{
  [(LPIndeterminateProgressSpinnerView *)self ensureIndicatorView];
  [(LPIndeterminateProgressSpinnerView *)self ensureURLLabel];
  [(LPIndeterminateProgressSpinnerView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIActivityIndicatorView *)self->_indicatorView bounds];
  v8 = v7;
  v10 = v9;
  text = self->_text;
  [(LPIndeterminateProgressSpinnerView *)self bounds];
  [(LPTextView *)text sizeThatFits:v12, v13];
  v15 = v14;
  v17 = v16;
  if (self->_text)
  {
    v18 = [(LPIndeterminateProgressSpinnerStyle *)self->_style spacing];
    [v18 value];
    v20 = v19 * 0.5;
  }

  else
  {
    v20 = 0.0;
  }

  v33 = v15;
  v21 = [(LPIndeterminateProgressSpinnerStyle *)self->_style verticalOffset];
  [v21 value];
  v22 = v6 - v10;
  v23 = v4;
  v24 = (v4 - v8) * 0.5;
  v25 = v10;
  v26 = v8;
  v28 = v22 * 0.5 - v17 * 0.5 + v20 + v27;

  [(UIActivityIndicatorView *)self->_indicatorView setFrame:v24, v28, v26, v25];
  v29 = [(LPIndeterminateProgressSpinnerStyle *)self->_style verticalOffset];
  [v29 value];
  v31 = v25 * 0.5 + (v6 - v17) * 0.5 + v20 + v30;

  v32 = self->_text;

  [(LPTextView *)v32 setFrame:(v23 - v33) * 0.5, v31, v33, v17];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPIndeterminateProgressSpinnerView *)self traitCollection];
  if ([v6 userInterfaceIdiom] == 6)
  {
    v7 = [(LPIndeterminateProgressSpinnerPresentationProperties *)self->_properties text];
    v8 = [v7 length];

    if (!v8)
    {
      v9 = 64.0;
      v10 = 64.0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  [(LPIndeterminateProgressSpinnerView *)self ensureIndicatorView];
  [(LPIndeterminateProgressSpinnerView *)self ensureURLLabel];
  [(LPTextView *)self->_text sizeThatFits:width, height];
  v12 = v11;
  v14 = v13;
  [(UIActivityIndicatorView *)self->_indicatorView sizeThatFits:width, height];
  v16 = v15;
  v18 = v17;
  if (self->_text)
  {
    v19 = [(LPIndeterminateProgressSpinnerStyle *)self->_style spacing];
    [v19 value];
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = [(LPIndeterminateProgressSpinnerStyle *)self->_style padding];
  v23 = [v22 leading];
  [v23 value];
  v25 = v24;
  v26 = [(LPIndeterminateProgressSpinnerStyle *)self->_style padding];
  v27 = [v26 trailing];
  [v27 value];
  v29 = v28;

  v30 = [(LPIndeterminateProgressSpinnerStyle *)self->_style padding];
  v31 = [v30 top];
  [v31 value];
  v33 = v32;
  v34 = [(LPIndeterminateProgressSpinnerStyle *)self->_style padding];
  v35 = [v34 bottom];
  [v35 value];
  v9 = v12 + v16 + v25 + v29;
  v10 = v14 + v18 + v21 + v33 + v36;

LABEL_9:
  v37 = v9;
  v38 = v10;
  result.height = v38;
  result.width = v37;
  return result;
}

@end