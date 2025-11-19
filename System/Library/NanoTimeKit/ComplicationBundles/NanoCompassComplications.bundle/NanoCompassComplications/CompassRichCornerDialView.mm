@interface CompassRichCornerDialView
- (id)_gossamer_newNeedleAODView;
- (id)_gossamer_newNeedleView;
- (id)_gossamer_newTicksView;
- (id)_newNeedleAODView;
- (id)_newNeedleView;
- (id)_newTicksView;
- (id)_pregossamer_newNeedleAODView;
- (id)_pregossamer_newNeedleView;
- (id)_pregossamer_newTicksView;
- (id)monochromeAccentViews;
- (id)monochromeOtherViews;
@end

@implementation CompassRichCornerDialView

- (id)_newTicksView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend__gossamer_newTicksView(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__pregossamer_newTicksView(self, v5, v6, v7);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_gossamer_newTicksView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Corner/North Tick");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = objc_msgSend_initWithImage_(v4, v5, v3, v6);
  northTick = self->_northTick;
  self->_northTick = v7;

  v9 = NanoCompassComplicationImageNamed(@"Compass/Corner/Ticks");
  v10 = objc_alloc(MEMORY[0x277D755E8]);
  v13 = objc_msgSend_initWithImage_(v10, v11, v9, v12);
  ticks = self->_ticks;
  self->_ticks = v13;

  objc_msgSend_bounds(self->_ticks, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x277D75D18]);
  v30 = objc_msgSend_initWithFrame_(v26, v27, v28, v29, v19, v21, v23, v25);
  objc_msgSend_addSubview_(v30, v31, self->_ticks, v32);
  objc_msgSend_addSubview_(v30, v33, self->_northTick, v34);

  return v30;
}

- (id)_pregossamer_newTicksView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Ticks");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = objc_msgSend_initWithImage_(v4, v5, v3, v6);
  ticks = self->_ticks;
  self->_ticks = v7;

  v9 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Dot");
  v10 = objc_alloc(MEMORY[0x277D755E8]);
  v13 = objc_msgSend_initWithImage_(v10, v11, v9, v12);
  dot = self->_dot;
  self->_dot = v13;

  objc_msgSend_bounds(self->_ticks, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x277D75D18]);
  v30 = objc_msgSend_initWithFrame_(v26, v27, v28, v29, v19, v21, v23, v25);
  objc_msgSend_addSubview_(v30, v31, self->_ticks, v32);
  objc_msgSend_addSubview_(v30, v33, self->_dot, v34);

  return v30;
}

- (id)_newNeedleView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend__gossamer_newNeedleView(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleView(self, v5, v6, v7);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_newNeedleAODView
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend__gossamer_newNeedleAODView(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__pregossamer_newNeedleAODView(self, v5, v6, v7);
  }

  return objc_claimAutoreleasedReturnValue();
}

- (id)_gossamer_newNeedleView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Bezel/Arrow");
  v4 = MEMORY[0x277D755B8];
  v5 = v3;
  v9 = objc_msgSend_CGImage(v5, v6, v7, v8);
  objc_msgSend_scale(v3, v10, v11, v12);
  v14 = v13 + v13;
  v18 = objc_msgSend_imageOrientation(v3, v15, v16, v17);
  v20 = objc_msgSend_imageWithCGImage_scale_orientation_(v4, v19, v9, v18, v14);

  v21 = objc_alloc(MEMORY[0x277D755E8]);
  v24 = objc_msgSend_initWithImage_(v21, v22, v20, v23);
  arrow = self->_arrow;
  self->_arrow = v24;

  v26 = self->_arrow;
  v27 = v26;

  return v26;
}

- (id)_gossamer_newNeedleAODView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Corner/ArrowAOD");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = objc_msgSend_initWithImage_(v4, v5, v3, v6);
  arrowAOD = self->_arrowAOD;
  self->_arrowAOD = v7;

  v9 = self->_arrowAOD;
  v10 = v9;

  return v9;
}

- (id)_pregossamer_newNeedleView
{
  v3 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Needle North");
  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v7 = objc_msgSend_initWithImage_(v4, v5, v3, v6);
  north = self->_north;
  self->_north = v7;

  v9 = NanoCompassComplicationImageNamed(@"Compass/Legacy/Corner/Needle South");
  v10 = objc_alloc(MEMORY[0x277D755E8]);
  v13 = objc_msgSend_initWithImage_(v10, v11, v9, v12);
  south = self->_south;
  self->_south = v13;

  objc_msgSend_bounds(self->_north, v15, v16, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = objc_alloc(MEMORY[0x277D75D18]);
  v30 = objc_msgSend_initWithFrame_(v26, v27, v28, v29, v19, v21, v23, v25);
  objc_msgSend_addSubview_(v30, v31, self->_south, v32);
  objc_msgSend_addSubview_(v30, v33, self->_north, v34);

  return v30;
}

- (id)_pregossamer_newNeedleAODView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  objc_msgSend_bounds(self, v4, v5, v6);
  v10 = objc_msgSend_initWithFrame_(v3, v7, v8, v9);
  arrowAOD = self->_arrowAOD;
  self->_arrowAOD = v10;

  v12 = self->_arrowAOD;

  return v12;
}

- (id)monochromeAccentViews
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v9, 3, v8[0], v8[1], self->_northTick, self->_arrow, self->_arrowAOD);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v8, 2, self->_north, self->_ticks, v9[0], v9[1], v9[2]);
  }
  v6 = ;

  return v6;
}

- (id)monochromeOtherViews
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v9, 1, v8[0], v8[1], self->_ticks);
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v8, 2, self->_south, self->_dot, v9[0]);
  }
  v6 = ;

  return v6;
}

@end