@interface MKIncidentExtendedDetailCell
- (MKIncidentExtendedDetailCell)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation MKIncidentExtendedDetailCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MKIncidentExtendedDetailCell;
  [(MKIncidentExtendedDetailCell *)&v3 prepareForReuse];
  [(MKIncidentDetailContentView *)self->_incidentContentView reset];
}

- (MKIncidentExtendedDetailCell)initWithReuseIdentifier:(id)identifier
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = MKIncidentExtendedDetailCell;
  v3 = [(MKIncidentExtendedDetailCell *)&v32 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    contentView = [(MKIncidentExtendedDetailCell *)v3 contentView];
    [contentView setOpaque:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKIncidentExtendedDetailCell *)v4 setBackgroundColor:clearColor];

    [(MKIncidentExtendedDetailCell *)v4 setOpaque:0];
    [(MKIncidentExtendedDetailCell *)v4 setSelectionStyle:0];
    [(MKIncidentExtendedDetailCell *)v4 setAccessibilityIdentifier:@"MKIncidentExtendedDetailCell"];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    contentView2 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    [contentView2 setBackgroundColor:clearColor2];

    v9 = [MKIncidentDetailContentView alloc];
    v10 = [(MKIncidentDetailContentView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    incidentContentView = v4->_incidentContentView;
    v4->_incidentContentView = v10;

    [(MKIncidentDetailContentView *)v4->_incidentContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    [contentView3 addSubview:v4->_incidentContentView];

    v24 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(MKIncidentDetailContentView *)v4->_incidentContentView leadingAnchor];
    contentView4 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v28;
    trailingAnchor = [(MKIncidentDetailContentView *)v4->_incidentContentView trailingAnchor];
    contentView5 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v23;
    topAnchor = [(MKIncidentDetailContentView *)v4->_incidentContentView topAnchor];
    contentView6 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v33[2] = v16;
    bottomAnchor = [(MKIncidentDetailContentView *)v4->_incidentContentView bottomAnchor];
    contentView7 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v33[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v21];
  }

  return v4;
}

@end