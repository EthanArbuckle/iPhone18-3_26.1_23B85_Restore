@interface VLFInfoRowView
+ (id)infoRowWithImage:(id)image text:(id)text;
- (VLFInfoRowView)initWithImage:(id)image text:(id)text;
@end

@implementation VLFInfoRowView

- (VLFInfoRowView)initWithImage:(id)image text:(id)text
{
  imageCopy = image;
  textCopy = text;
  v66.receiver = self;
  v66.super_class = VLFInfoRowView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(VLFInfoRowView *)&v66 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = height;
  if (height)
  {
    [(VLFInfoRowView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(VLFInfoRowView *)v12 setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(VLFInfoRowView *)v12 setContentHuggingPriority:1 forAxis:v14];
    v65 = textCopy;
    heightAnchor = [(VLFInfoRowView *)v12 heightAnchor];
    LODWORD(v16) = 1132068864;
    v17 = [heightAnchor constraintEqualToConstant:0.0 priority:v16];
    v69 = v17;
    v18 = [NSArray arrayWithObjects:&v69 count:1];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = [[UIImageView alloc] initWithImage:imageCopy];
    iconImageView = v12->_iconImageView;
    v12->_iconImageView = v19;

    [(UIImageView *)v12->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)v12->_iconImageView setContentCompressionResistancePriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)v12->_iconImageView setContentHuggingPriority:1 forAxis:v22];
    v23 = +[UIColor labelColor];
    [(UIImageView *)v12->_iconImageView setTintColor:v23];

    [(UIImageView *)v12->_iconImageView setContentMode:1];
    [(VLFInfoRowView *)v12 addSubview:v12->_iconImageView];
    leadingAnchor = [(UIImageView *)v12->_iconImageView leadingAnchor];
    leadingAnchor2 = [(VLFInfoRowView *)v12 leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[0] = v58;
    topAnchor = [(UIImageView *)v12->_iconImageView topAnchor];
    topAnchor2 = [(VLFInfoRowView *)v12 topAnchor];
    v52 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v68[1] = v52;
    bottomAnchor = [(UIImageView *)v12->_iconImageView bottomAnchor];
    bottomAnchor2 = [(VLFInfoRowView *)v12 bottomAnchor];
    v47 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v68[2] = v47;
    heightAnchor2 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v24 = [heightAnchor2 constraintEqualToConstant:40.0];
    v68[3] = v24;
    [(UIImageView *)v12->_iconImageView widthAnchor];
    v25 = v64 = imageCopy;
    heightAnchor3 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v27 = [v25 constraintEqualToAnchor:heightAnchor3];
    v68[4] = v27;
    centerYAnchor = [(UIImageView *)v12->_iconImageView centerYAnchor];
    centerYAnchor2 = [(VLFInfoRowView *)v12 centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v68[5] = v30;
    v31 = [NSArray arrayWithObjects:v68 count:6];
    [NSLayoutConstraint activateConstraints:v31];

    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    infoLabel = v12->_infoLabel;
    v12->_infoLabel = v32;

    [(UILabel *)v12->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v34) = 1148846080;
    [(UILabel *)v12->_infoLabel setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UILabel *)v12->_infoLabel setContentHuggingPriority:1 forAxis:v35];
    [(UILabel *)v12->_infoLabel setNumberOfLines:0];
    [(UILabel *)v12->_infoLabel setText:v65];
    v36 = +[UIColor labelColor];
    [(UILabel *)v12->_infoLabel setTextColor:v36];

    [(VLFInfoRowView *)v12 addSubview:v12->_infoLabel];
    leadingAnchor3 = [(UILabel *)v12->_infoLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v12->_iconImageView trailingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
    v67[0] = v59;
    trailingAnchor2 = [(UILabel *)v12->_infoLabel trailingAnchor];
    trailingAnchor3 = [(VLFInfoRowView *)v12 trailingAnchor];
    v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v67[1] = v53;
    topAnchor3 = [(UILabel *)v12->_infoLabel topAnchor];
    topAnchor4 = [(VLFInfoRowView *)v12 topAnchor];
    v37 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    v67[2] = v37;
    bottomAnchor3 = [(UILabel *)v12->_infoLabel bottomAnchor];
    bottomAnchor4 = [(VLFInfoRowView *)v12 bottomAnchor];
    v40 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v67[3] = v40;
    heightAnchor4 = [(UILabel *)v12->_infoLabel heightAnchor];
    heightAnchor5 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v43 = [heightAnchor4 constraintGreaterThanOrEqualToAnchor:heightAnchor5];
    v67[4] = v43;
    v44 = [NSArray arrayWithObjects:v67 count:5];
    [NSLayoutConstraint activateConstraints:v44];

    textCopy = v65;
    imageCopy = v64;
  }

  return v12;
}

+ (id)infoRowWithImage:(id)image text:(id)text
{
  textCopy = text;
  imageCopy = image;
  v8 = [[self alloc] initWithImage:imageCopy text:textCopy];

  return v8;
}

@end