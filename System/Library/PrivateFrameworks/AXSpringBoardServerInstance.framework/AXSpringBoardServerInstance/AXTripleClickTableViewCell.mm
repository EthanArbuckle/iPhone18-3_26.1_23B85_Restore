@interface AXTripleClickTableViewCell
- (AXTripleClickTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation AXTripleClickTableViewCell

- (AXTripleClickTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = AXTripleClickTableViewCell;
  v4 = [(AXTripleClickTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(AXTripleClickTableViewCell *)v4 textLabel];
    v7 = UISystemFontBoldForSize();
    [textLabel setFont:v7];

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    topLine = v5->_topLine;
    v5->_topLine = v8;

    v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.37];
    [(UIView *)v5->_topLine setBackgroundColor:v10];

    [(AXTripleClickTableViewCell *)v5 addSubview:v5->_topLine];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomLine = v5->_bottomLine;
    v5->_bottomLine = v11;

    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
    [(UIView *)v5->_bottomLine setBackgroundColor:v13];

    [(AXTripleClickTableViewCell *)v5 addSubview:v5->_bottomLine];
    v14 = v5;
  }

  return v5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = AXTripleClickTableViewCell;
  [(AXTripleClickTableViewCell *)&v7 layoutSubviews];
  topLine = self->_topLine;
  [(AXTripleClickTableViewCell *)self frame];
  [(UIView *)topLine setFrame:0.0, 0.0];
  bottomLine = self->_bottomLine;
  [(AXTripleClickTableViewCell *)self frame];
  v6 = v5 + -1.0;
  [(AXTripleClickTableViewCell *)self frame];
  [(UIView *)bottomLine setFrame:0.0, v6];
}

@end