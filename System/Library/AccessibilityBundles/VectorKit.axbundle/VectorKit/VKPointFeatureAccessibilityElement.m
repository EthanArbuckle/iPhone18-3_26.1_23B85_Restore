@interface VKPointFeatureAccessibilityElement
- ($1AB5FA073B851C12C2339EC22442E995)location;
- (BOOL)accessibilityActivate;
- (BOOL)isEqual:(id)a3;
- (CGRect)accessibilityFrame;
- (VKPointFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3;
- (double)_radius;
- (id)_poiTypeSuffix;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityPaths;
- (id)trueLabel;
- (int64_t)_accessibilityMapFeatureType;
@end

@implementation VKPointFeatureAccessibilityElement

- (VKPointFeatureAccessibilityElement)initWithAccessibilityContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKPointFeatureAccessibilityElement;
  v5 = [(VKFeatureAccessibilityElement *)&v9 initWithAccessibilityContainer:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    featureIds = v5->_featureIds;
    v5->_featureIds = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VKPointFeatureAccessibilityElement *)self location];
      v7 = v6;
      [(VKPointFeatureAccessibilityElement *)v5 location];
      if (v7 == v8 && (-[VKPointFeatureAccessibilityElement location](self, "location"), v10 = v9, -[VKPointFeatureAccessibilityElement location](v5, "location"), v10 == v11) && (-[VKPointFeatureAccessibilityElement location](self, "location"), v13 = v12, -[VKPointFeatureAccessibilityElement location](v5, "location"), v13 == v14) && (v15 = -[VKFeatureAccessibilityElement style](self, "style"), v15 == -[VKFeatureAccessibilityElement style](v5, "style")) && (-[VKPointFeatureAccessibilityElement featureIds](self, "featureIds"), v16 = objc_claimAutoreleasedReturnValue(), -[VKPointFeatureAccessibilityElement featureIds](v5, "featureIds"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 isEqualToArray:v17], v17, v16, (v18 & 1) != 0))
      {
        v19 = [(VKPointFeatureAccessibilityElement *)self accessibilityLabel];
        v20 = [(VKPointFeatureAccessibilityElement *)v5 accessibilityLabel];
        v21 = [v19 isEqualToString:v20];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (int64_t)_accessibilityMapFeatureType
{
  if (![(VKFeatureAccessibilityElement *)self isPOI])
  {
    return 2;
  }

  v3 = [(VKPointFeatureAccessibilityElement *)self poiCategory];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqual:*MEMORY[0x29EDC1258]])
    {
      v5 = 7;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1260]])
    {
      v5 = 29;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1268]])
    {
      v5 = 30;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1270]])
    {
      v5 = 31;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1250]])
    {
      v5 = 32;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1278]])
    {
      v5 = 33;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1280]])
    {
      v5 = 34;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1288]])
    {
      v5 = 26;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1290]])
    {
      v5 = 35;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1298]])
    {
      v5 = 36;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12A0]])
    {
      v5 = 37;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12A8]])
    {
      v5 = 38;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12B0]])
    {
      v5 = 39;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12B8]])
    {
      v5 = 40;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12C0]])
    {
      v5 = 21;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12C8]])
    {
      v5 = 41;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12D0]])
    {
      v5 = 22;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12D8]])
    {
      v5 = 42;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12E0]])
    {
      v5 = 43;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12E8]])
    {
      v5 = 44;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12F0]])
    {
      v5 = 45;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC12F8]])
    {
      v5 = 46;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1300]])
    {
      v5 = 47;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1308]])
    {
      v5 = 48;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1310]])
    {
      v5 = 49;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1318]])
    {
      v5 = 50;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1320]])
    {
      v5 = 51;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1328]])
    {
      v5 = 15;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1338]])
    {
      v5 = 52;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1330]])
    {
      v5 = 53;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1340]])
    {
      v5 = 54;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1348]])
    {
      v5 = 6;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1350]])
    {
      v5 = 55;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1358]])
    {
      v5 = 56;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1360]])
    {
      v5 = 57;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1368]])
    {
      v5 = 58;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1370]])
    {
      v5 = 59;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1378]])
    {
      v5 = 60;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1380]])
    {
      v5 = 61;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1388]])
    {
      v5 = 62;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1390]])
    {
      v5 = 63;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1398]])
    {
      v5 = 64;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13A0]])
    {
      v5 = 65;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13A8]])
    {
      v5 = 66;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13B0]])
    {
      v5 = 67;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13B8]])
    {
      v5 = 68;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13C0]])
    {
      v5 = 24;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13C8]])
    {
      v5 = 69;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13D0]])
    {
      v5 = 70;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13D8]])
    {
      v5 = 71;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13E0]])
    {
      v5 = 14;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13E8]])
    {
      v5 = 72;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13F0]])
    {
      v5 = 73;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1400]])
    {
      v5 = 18;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1408]])
    {
      v5 = 74;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1410]])
    {
      v5 = 75;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC13F8]])
    {
      v5 = 76;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1418]])
    {
      v5 = 27;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1420]])
    {
      v5 = 77;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1428]])
    {
      v5 = 78;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1430]])
    {
      v5 = 79;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1438]])
    {
      v5 = 80;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1440]])
    {
      v5 = 81;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1448]])
    {
      v5 = 82;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1450]])
    {
      v5 = 5;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1458]])
    {
      v5 = 83;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1460]])
    {
      v5 = 84;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1468]])
    {
      v5 = 85;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1470]])
    {
      v5 = 86;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1478]])
    {
      v5 = 8;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1480]])
    {
      v5 = 87;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1488]])
    {
      v5 = 88;
    }

    else if ([v4 isEqual:*MEMORY[0x29EDC1490]])
    {
      v5 = 89;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (double)_radius
{
  v2 = [(VKPointFeatureAccessibilityElement *)self _accessibilityMapFeatureType];
  result = 40.0;
  if ((v2 - 9) >= 4)
  {
    return 20.0;
  }

  return result;
}

- (id)accessibilityPath
{
  v2 = MEMORY[0x29EDC7948];
  v3 = [(VKPointFeatureAccessibilityElement *)self accessibilityPaths];
  v4 = [v3 objectAtIndex:0];
  v5 = [v2 bezierPathWithCGPath:v4];

  return v5;
}

- (id)accessibilityPaths
{
  v18[1] = *MEMORY[0x29EDCA608];
  [(VKPointFeatureAccessibilityElement *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKPointFeatureAccessibilityElement *)self _radius];
  v12 = v11;
  v13 = MEMORY[0x29EDC7948];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v15 = [v13 bezierPathWithArcCenter:1 radius:MidX startAngle:CGRectGetMidY(v21) endAngle:v12 clockwise:{0.0, 6.28318531}];
  v18[0] = [v15 CGPath];
  v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:v18 count:1];

  return v16;
}

- (id)trueLabel
{
  v4.receiver = self;
  v4.super_class = VKPointFeatureAccessibilityElement;
  v2 = [(VKFeatureAccessibilityElement *)&v4 accessibilityLabel];

  return v2;
}

- (id)_poiTypeSuffix
{
  v2 = [(VKPointFeatureAccessibilityElement *)self _accessibilityMapFeatureType]- 4;
  if (v2 <= 0x17 && ((0xDFFFFFu >> v2) & 1) != 0)
  {
    v3 = AXVectorKitLocString(off_29F318698[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityLabel", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = VKPointFeatureAccessibilityElement;
    v6 = [(VKFeatureAccessibilityElement *)&v12 accessibilityLabel];
    v7 = [(VKPointFeatureAccessibilityElement *)self _poiTypeSuffix];
    if (v7 && [v6 rangeOfString:v7] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v7;
      v11 = @"__AXStringForVariablesSentinel";
      v8 = __UIAXStringForVariables();

      v6 = v8;
    }

    [*v4 setObject:v6 forKeyedSubscript:{v3, v10, v11}];
  }

  return v6;
}

- (id)accessibilityIdentifier
{
  v7.receiver = self;
  v7.super_class = VKPointFeatureAccessibilityElement;
  v2 = [(VKPointFeatureAccessibilityElement *)&v7 accessibilityIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"VKPointFeature";
  }

  v5 = v4;

  return v4;
}

- (CGRect)accessibilityFrame
{
  VKLocationCoordinate2DForVKPoint();
  v4 = v3;
  v6 = v5;
  v7 = [(VKPointFeatureAccessibilityElement *)self accessibilityContainer];
  v8 = [(VKPointFeatureAccessibilityElement *)self accessibilityContainer];
  [v7 convertCoordinate:v8 toPointToLayer:{v4, v6}];

  v9 = [(VKPointFeatureAccessibilityElement *)self accessibilityContainer];
  v10 = [v9 accessibilityLayerHostingView];

  UIAccessibilityFrameForBounds();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (BOOL)accessibilityActivate
{
  v5 = MEMORY[0x29EDCA5F8];
  v6 = 3221225472;
  v7 = __59__VKPointFeatureAccessibilityElement_accessibilityActivate__block_invoke;
  v8 = &unk_29F318628;
  v9 = self;
  AXPerformBlockOnMainThreadAfterDelay();
  v4.receiver = self;
  v4.super_class = VKPointFeatureAccessibilityElement;
  return [(VKPointFeatureAccessibilityElement *)&v4 accessibilityActivate];
}

void __59__VKPointFeatureAccessibilityElement_accessibilityActivate__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) accessibilityContainer];
  v2 = [v4 safeBoolForKey:@"accessibilityIsShowingCalloutAnnotationView"];

  if (v2)
  {
    v5 = [*(a1 + 32) accessibilityContainer];
    v3 = [v5 safeValueForKey:@"accessibilityCalloutAnnotationView"];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
  }
}

- (id)accessibilityDragSourceDescriptors
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(VKPointFeatureAccessibilityElement *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x29EDC7900]);
  v5 = MEMORY[0x29EDBA0F8];
  v6 = AXVectorKitLocString(@"DRAG_POI");
  v7 = [(VKPointFeatureAccessibilityElement *)self accessibilityLabel];
  v8 = [v5 stringWithFormat:v6, v7];
  [(VKPointFeatureAccessibilityElement *)self accessibilityActivationPoint];
  UIAccessibilityPointToPoint();
  v9 = [v4 initWithName:v8 point:v3 inView:?];
  v12[0] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];

  return v10;
}

- ($1AB5FA073B851C12C2339EC22442E995)location
{
  x = self->_location.x;
  y = self->_location.y;
  z = self->_location.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end