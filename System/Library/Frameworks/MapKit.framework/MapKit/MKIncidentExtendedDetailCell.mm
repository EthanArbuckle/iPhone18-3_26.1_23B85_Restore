@interface MKIncidentExtendedDetailCell
- (MKIncidentExtendedDetailCell)initWithReuseIdentifier:(id)a3;
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

- (MKIncidentExtendedDetailCell)initWithReuseIdentifier:(id)a3
{
  v33[4] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = MKIncidentExtendedDetailCell;
  v3 = [(MKIncidentExtendedDetailCell *)&v32 initWithStyle:0 reuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(MKIncidentExtendedDetailCell *)v3 contentView];
    [v5 setOpaque:0];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(MKIncidentExtendedDetailCell *)v4 setBackgroundColor:v6];

    [(MKIncidentExtendedDetailCell *)v4 setOpaque:0];
    [(MKIncidentExtendedDetailCell *)v4 setSelectionStyle:0];
    [(MKIncidentExtendedDetailCell *)v4 setAccessibilityIdentifier:@"MKIncidentExtendedDetailCell"];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    v8 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    [v8 setBackgroundColor:v7];

    v9 = [MKIncidentDetailContentView alloc];
    v10 = [(MKIncidentDetailContentView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    incidentContentView = v4->_incidentContentView;
    v4->_incidentContentView = v10;

    [(MKIncidentDetailContentView *)v4->_incidentContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    [v12 addSubview:v4->_incidentContentView];

    v24 = MEMORY[0x1E696ACD8];
    v30 = [(MKIncidentDetailContentView *)v4->_incidentContentView leadingAnchor];
    v31 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    v29 = [v31 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v26 = [(MKIncidentDetailContentView *)v4->_incidentContentView trailingAnchor];
    v27 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    v25 = [v27 trailingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v33[1] = v23;
    v13 = [(MKIncidentDetailContentView *)v4->_incidentContentView topAnchor];
    v14 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v33[2] = v16;
    v17 = [(MKIncidentDetailContentView *)v4->_incidentContentView bottomAnchor];
    v18 = [(MKIncidentExtendedDetailCell *)v4 contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v33[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v21];
  }

  return v4;
}

@end