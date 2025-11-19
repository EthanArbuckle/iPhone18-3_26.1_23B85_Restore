@interface MCNearbyPeerTableViewHeader
- (MCNearbyPeerTableViewHeader)initWithTitle:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation MCNearbyPeerTableViewHeader

- (MCNearbyPeerTableViewHeader)initWithTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCNearbyPeerTableViewHeader;
  v4 = [(MCNearbyPeerTableViewHeader *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  if (v4)
  {
    -[MCNearbyPeerTableViewHeader setBackgroundColor:](v4, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    [(MCNearbyPeerTableViewHeader *)v4 setAutoresizingMask:2];
    v5 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v4->_text = v5;
    -[UILabel setFont:](v5, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:14.0]);
    v4->_spinner = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    -[UILabel setTextColor:](v4->_text, "setTextColor:", [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:1.0]);
    [(UIActivityIndicatorView *)v4->_spinner setHidesWhenStopped:1];
    -[UILabel setBackgroundColor:](v4->_text, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    -[UILabel setText:](v4->_text, "setText:", [a3 uppercaseString]);
    [(MCNearbyPeerTableViewHeader *)v4 addSubview:v4->_text];
    [(MCNearbyPeerTableViewHeader *)v4 addSubview:v4->_spinner];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCNearbyPeerTableViewHeader;
  [(MCNearbyPeerTableViewHeader *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MCNearbyPeerTableViewHeader;
  [(MCNearbyPeerTableViewHeader *)&v9 layoutSubviews];
  [(UIActivityIndicatorView *)self->_spinner frame];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_text sizeToFit];
  [(UILabel *)self->_text frame];
  v8 = v7 + 15.0 + 10.0;
  [(UILabel *)self->_text setFrame:15.0, 16.5];
  [(UIActivityIndicatorView *)self->_spinner setFrame:v8, 14.5, v4, v6];
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
}

@end