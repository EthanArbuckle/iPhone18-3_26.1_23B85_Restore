@interface ACUITextWithLinkButtonFooterView
- (ACUITextWithLinkButtonFooterView)initWithSpecifier:(id)a3;
- (ACUITextWithLinkButtonFooterView)initWithText:(id)a3 linkButton:(id)a4;
- (ACUITextWithLinkButtonFooterView)initWithText:(id)a3 linkButtons:(id)a4;
- (double)_heightForEmptyLineConstrainedToWidth:(double)a3;
- (double)_heightForFooterTextConstrainedToWidth:(double)a3;
- (double)_heightForLinkButton:(id)a3 constrainedToWidth:(double)a4;
- (double)preferredHeightForWidth:(double)a3;
- (void)layoutSubviews;
@end

@implementation ACUITextWithLinkButtonFooterView

- (ACUITextWithLinkButtonFooterView)initWithSpecifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] propertyForKey:@"ACUIFooterText"];
  v6 = [location[0] propertyForKey:@"ACUILinkButtonArray"];
  v3 = v9;
  v9 = 0;
  v9 = [(ACUITextWithLinkButtonFooterView *)v3 initWithText:v7 linkButtons:v6];
  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (ACUITextWithLinkButtonFooterView)initWithText:(id)a3 linkButton:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = v12;
  v6 = location[0];
  v13[0] = v10;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = 0;
  v12 = [(ACUITextWithLinkButtonFooterView *)v7 initWithText:v6 linkButtons:?];
  v9 = MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  *MEMORY[0x277D85DE8];
  return v9;
}

- (ACUITextWithLinkButtonFooterView)initWithText:(id)a3 linkButtons:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v4 = v31;
  v31 = 0;
  v28.receiver = v4;
  v28.super_class = ACUITextWithLinkButtonFooterView;
  v25 = [(ACUITextWithLinkButtonFooterView *)&v28 init];
  v31 = v25;
  objc_storeStrong(&v31, v25);
  if (v25)
  {
    v5 = [location[0] copy];
    footerText = v31->_footerText;
    v31->_footerText = v5;
    MEMORY[0x277D82BD8](footerText);
    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textLabel = v31->_textLabel;
    v31->_textLabel = v8;
    MEMORY[0x277D82BD8](textLabel);
    [(UILabel *)v31->_textLabel setText:v31->_footerText];
    v16 = v31->_textLabel;
    v17 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v16 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v17);
    [(UILabel *)v31->_textLabel setNumberOfLines:0];
    v18 = v31->_textLabel;
    v19 = [MEMORY[0x277D75348] grayColor];
    [(UILabel *)v18 setTextColor:?];
    MEMORY[0x277D82BD8](v19);
    v20 = v31->_textLabel;
    v21 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v20 setFont:?];
    MEMORY[0x277D82BD8](v21);
    [(UILabel *)v31->_textLabel setTextAlignment:4];
    [(ACUITextWithLinkButtonFooterView *)v31 addSubview:v31->_textLabel];
    objc_storeStrong(&v31->_linkButtons, v29);
    memset(__b, 0, sizeof(__b));
    v22 = MEMORY[0x277D82BE0](v31->_linkButtons);
    v23 = [v22 countByEnumeratingWithState:__b objects:v32 count:16];
    if (v23)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v23;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(__b[1] + 8 * v14);
        [(ACUITextWithLinkButtonFooterView *)v31 addSubview:v27];
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v22 countByEnumeratingWithState:__b objects:v32 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v22);
  }

  v11 = MEMORY[0x277D82BE0](v31);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v31, 0);
  *MEMORY[0x277D85DE8];
  return v11;
}

- (void)layoutSubviews
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = self;
  v35 = a2;
  v34.receiver = self;
  v34.super_class = ACUITextWithLinkButtonFooterView;
  [(ACUITextWithLinkButtonFooterView *)&v34 layoutSubviews];
  [(ACUITextWithLinkButtonFooterView *)v36 frame];
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v4 - 28.0;
  v27 = 0u;
  v28 = 0u;
  v27 = *MEMORY[0x277CBF3A0];
  v28 = *(MEMORY[0x277CBF3A0] + 16);
  *&v27 = 14.0;
  *(&v27 + 1) = 10.0;
  *&v28 = v4 - 28.0;
  [(ACUITextWithLinkButtonFooterView *)v36 _heightForFooterTextConstrainedToWidth:v4 - 28.0];
  *(&v28 + 1) = v6;
  [(UILabel *)v36->_textLabel setFrame:v27, *&v28, v6];
  v26 = 0.0;
  v25 = 0.0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v36->_linkButtons);
  v18 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v15);
      [v24 frame];
      v21 = v7;
      if ([MEMORY[0x277D74248] defaultWritingDirectionForLanguage:0] == 1)
      {
        [(ACUITextWithLinkButtonFooterView *)v36 frame];
        v19 = v8 - v21 - 14.0;
      }

      else
      {
        v19 = 14.0;
      }

      [(ACUITextWithLinkButtonFooterView *)v36 _heightForEmptyLineConstrainedToWidth:v33, *(&v28 + 1) + 10.0 + v26, v25 + 1.0];
      v20 = v11 + v12 * v9;
      [(ACUITextWithLinkButtonFooterView *)v36 _heightForLinkButton:v24 constrainedToWidth:v33];
      v22 = v10;
      [v24 setFrame:{v19, v20, v21, v10}];
      v26 = v26 + v22;
      v25 = v25 + 1.0;
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
}

- (double)preferredHeightForWidth:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a3 - 28.0;
  v18 = 0.0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v22->_linkButtons);
  v15 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v12);
      [(ACUITextWithLinkButtonFooterView *)v22 _heightForLinkButton:v17 constrainedToWidth:v19];
      v18 = v18 + v3;
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [(ACUITextWithLinkButtonFooterView *)v22 _heightForFooterTextConstrainedToWidth:v19];
  v8 = v4 + 10.0;
  [(ACUITextWithLinkButtonFooterView *)v22 _heightForEmptyLineConstrainedToWidth:v19];
  v9 = v5;
  v6 = [(NSArray *)v22->_linkButtons count];
  *MEMORY[0x277D85DE8];
  return v8 + v9 * v6 + v18 + 10.0;
}

- (double)_heightForFooterTextConstrainedToWidth:(double)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  footerText = self->_footerText;
  CGSizeMake();
  v10 = v3;
  v11 = v4;
  v13 = *MEMORY[0x277D740A8];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v14[0] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:?];
  [(NSString *)footerText boundingRectWithSize:1 options:v10 attributes:v11 context:?];
  v12 = v5;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *MEMORY[0x277D85DE8];
  return ceil(v12);
}

- (double)_heightForLinkButton:(id)a3 constrainedToWidth:(double)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [location[0] acui_titleString];
  CGSizeMake();
  v11 = v4;
  v12 = v5;
  v15 = *MEMORY[0x277D740A8];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v16[0] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:?];
  [v10 boundingRectWithSize:1 options:v11 attributes:v12 context:?];
  v13 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return ceil(v13);
}

- (double)_heightForEmptyLineConstrainedToWidth:(double)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  CGSizeMake();
  v9 = v3;
  v10 = v4;
  v12 = *MEMORY[0x277D740A8];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:8.0];
  v13[0] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:?];
  [@"A" boundingRectWithSize:1 options:v9 attributes:v10 context:?];
  v11 = v5;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *MEMORY[0x277D85DE8];
  return ceil(v11);
}

@end