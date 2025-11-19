unint64_t sub_100B0D648()
{
  result = qword_101A11138;
  if (!qword_101A11138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11138);
  }

  return result;
}

unint64_t sub_100B0D6C0()
{
  result = qword_101A11140;
  if (!qword_101A11140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11140);
  }

  return result;
}

unint64_t sub_100B0D718()
{
  result = qword_101A11148;
  if (!qword_101A11148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11148);
  }

  return result;
}

unint64_t sub_100B0D770()
{
  result = qword_101A11150;
  if (!qword_101A11150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11150);
  }

  return result;
}

ValueMetadata *sub_100B0D7C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000025 && 0x8000000101589890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for TSContentLanguage.Models.Shape();
    v6 = &qword_101A11420;
    v7 = type metadata accessor for TSContentLanguage.Models.Shape;
  }

  else
  {
    if (a1 == 0xD00000000000002FLL && 0x80000001015898C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B1110C();
      return &type metadata for TSContentLanguage.Models.ConnectionLine;
    }

    if (a1 == 0xD000000000000039 && 0x80000001015898F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B110B8();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.LineType;
    }

    if (a1 == 0xD000000000000033 && 0x8000000101589930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B11064();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End;
    }

    if (a1 == 0xD00000000000003ALL && 0x8000000101589970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B11010();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End.Anchor;
    }

    if (a1 == 0xD000000000000041 && 0x80000001015899B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10FBC();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet;
    }

    if (a1 == 0xD000000000000025 && 0x8000000101589A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10F68();
      return &type metadata for TSContentLanguage.Models.Group;
    }

    if (a1 == 0xD000000000000025 && 0x8000000101589A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10F14();
      return &type metadata for TSContentLanguage.Models.Image;
    }

    if (a1 == 0xD00000000000002ALL && 0x8000000101589A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10EC0();
      return &type metadata for TSContentLanguage.Models.Image.Mask;
    }

    if (a1 == 0xD000000000000038 && 0x8000000101589A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10E6C();
      return &type metadata for TSContentLanguage.Models.Image.InstantAlphaPath;
    }

    if (a1 == 0xD000000000000027 && 0x8000000101567CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = type metadata accessor for TSContentLanguage.Models.Textbox();
      v6 = &qword_101A00468;
      v7 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    else
    {
      if (a1 == 0xD000000000000025 && 0x8000000101589AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10E18();
        return &type metadata for TSContentLanguage.Models.Color;
      }

      if (a1 == 0xD00000000000002ALL && 0x8000000101589B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10DC4();
        return &type metadata for TSContentLanguage.Models.Color.RGBA;
      }

      if (a1 == 0xD000000000000036 && 0x8000000101589B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10D70();
        return &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10D1C();
        return &type metadata for TSContentLanguage.Models.LineEnd;
      }

      if (a1 == 0xD00000000000002ELL && 0x8000000101589BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10CC8();
        return &type metadata for TSContentLanguage.Models.ContactShadow;
      }

      if (a1 == 0xD00000000000002BLL && 0x8000000101589BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10C74();
        return &type metadata for TSContentLanguage.Models.DropShadow;
      }

      if (a1 == 0xD000000000000026 && 0x8000000101589C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10C20();
        return &type metadata for TSContentLanguage.Models.Stroke;
      }

      if (a1 == 0xD00000000000002BLL && 0x8000000101589C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10BCC();
        return &type metadata for TSContentLanguage.Models.Stroke.Line;
      }

      if (a1 == 0xD000000000000033 && 0x8000000101589C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10B78();
        return &type metadata for TSContentLanguage.Models.Stroke.Line.Pattern;
      }

      if (a1 == 0xD00000000000002CLL && 0x8000000101589CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10B24();
        return &type metadata for TSContentLanguage.Models.Stroke.Frame;
      }

      if (a1 == 0xD000000000000031 && 0x8000000101589CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10AD0();
        return &type metadata for TSContentLanguage.Models.Stroke.Frame.Name;
      }

      if (a1 == 0xD00000000000002DLL && 0x8000000101589D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10A7C();
        return &type metadata for TSContentLanguage.Models.CurvedShadow;
      }

      if (a1 == 0xD000000000000024 && 0x8000000101589D40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10A28();
        return &type metadata for TSContentLanguage.Models.Fill;
      }

      if (a1 == 0xD00000000000002DLL && 0x8000000101589D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B109D4();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient;
      }

      if (a1 == 0xD000000000000032 && 0x8000000101589DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10980();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Stop;
      }

      if (a1 == 0xD000000000000034 && 0x8000000101589DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1092C();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor;
      }

      if (a1 == 0xD00000000000003BLL && 0x8000000101589E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B108D8();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor.Linear;
      }

      if (a1 == 0xD00000000000003BLL && 0x8000000101589E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10884();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor.Radial;
      }

      if (a1 == 0xD00000000000002FLL && 0x8000000101589EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10830();
        return &type metadata for TSContentLanguage.Models.Fill.ImageFill;
      }

      if (a1 == 0xD000000000000039 && 0x8000000101589ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B107DC();
        return &type metadata for TSContentLanguage.Models.Fill.ImageFill.Technique;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10788();
        return &type metadata for TSContentLanguage.Models.Resource;
      }

      if (a1 == 0xD00000000000003ALL && 0x8000000101589F40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10734();
        return &type metadata for TSContentLanguage.Models.Resource.IndirectResource;
      }

      if (a1 == 0xD000000000000040 && 0x8000000101589F80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B106E0();
        return &type metadata for TSContentLanguage.Models.Resource.Base64EncodedResource;
      }

      if (a1 == 0xD000000000000024 && 0x8000000101589FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1068C();
        return &type metadata for TSContentLanguage.Models.Path;
      }

      if (a1 == 0xD000000000000030 && 0x800000010158A000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10638();
        return &type metadata for TSContentLanguage.Models.Path.BezierPath;
      }

      if (a1 == 0xD000000000000028 && 0x800000010158A040 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B105E4();
        return &type metadata for TSContentLanguage.Models.Geometry;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158A070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10590();
        return &type metadata for TSContentLanguage.Models.Rect;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0D568();
        return &type metadata for TSContentLanguage.Models.Position;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158A0A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1053C();
        return &type metadata for TSContentLanguage.Models.Size;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B104E8();
        return &type metadata for TSContentLanguage.Models.ScaffoldGradient;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10494();
        return &type metadata for TSContentLanguage.Models.LayoutProperties;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10440();
        return &type metadata for TSContentLanguage.Models.ParagraphStyleType;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B103EC();
        return &type metadata for TSContentLanguage.Models.ScaffoldShadow;
      }

      if (a1 == 0xD000000000000044 && 0x800000010158A1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10398();
        return &type metadata for TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10344();
        return &type metadata for TSContentLanguage.Models.LineSpacingType;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B102F0();
        return &type metadata for TSContentLanguage.Models.LineSpacingType.LineSpacingKindType;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1029C();
        return &type metadata for TSContentLanguage.Models.CharacterStyleType;
      }

      if (a1 == 0xD000000000000029 && 0x800000010158A2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10248();
        return &type metadata for TSContentLanguage.Models.Paragraph;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B101F4();
        return &type metadata for TSContentLanguage.Models.Paragraph.BreakType;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B101A0();
        return &type metadata for TSContentLanguage.Models.LayoutStyleType;
      }

      if (a1 == 0xD000000000000028 && 0x800000010158A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1014C();
        return &type metadata for TSContentLanguage.Models.TextRun;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B100F8();
        return &type metadata for TSContentLanguage.Models.ListLevelType;
      }

      if (a1 == 0xD000000000000033 && 0x800000010158A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B100A4();
        return &type metadata for TSContentLanguage.Models.ScaffoldListStyle;
      }

      if (a1 == 0xD000000000000038 && 0x800000010158A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10050();
        return &type metadata for TSContentLanguage.Models.ScaffoldParagraphStyle;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FFFC();
        return &type metadata for TSContentLanguage.Models.CharacterProperties;
      }

      if (a1 == 0xD000000000000042 && 0x800000010158A4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FFA8();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.BaselineType;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A500 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FF54();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.CapitalizationType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158A550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FF00();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.FontFeaturesType;
      }

      if (a1 == 0xD000000000000042 && 0x800000010158A5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FEAC();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.LigatureType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158A5F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FE58();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.StrikethroughType;
      }

      if (a1 == 0xD000000000000043 && 0x800000010158A640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FE04();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.UnderlineType;
      }

      if (a1 == 0xD00000000000002ELL && 0x800000010158A690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FDB0();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FD5C();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription;
      }

      if (a1 == 0xD00000000000004ALL && 0x800000010158A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FD08();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription;
      }

      if (a1 == 0xD00000000000002DLL && 0x800000010158A760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FCB4();
        return &type metadata for TSContentLanguage.Models.TabStopType;
      }

      if (a1 == 0xD000000000000045 && 0x800000010158A790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FC60();
        return &type metadata for TSContentLanguage.Models.TabStopType.TabAlignmentKindType;
      }

      if (a1 == 0xD000000000000032 && 0x800000010158A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FC0C();
        return &type metadata for TSContentLanguage.Models.NumberFormatType;
      }

      if (a1 == 0xD000000000000037 && 0x800000010158A820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FBB8();
        return &type metadata for TSContentLanguage.Models.NumberFormatType.Kind;
      }

      if (a1 == 0xD000000000000039 && 0x800000010158A860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FB64();
        return &type metadata for TSContentLanguage.Models.NumberFormatType.Format;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FB10();
        return &type metadata for TSContentLanguage.Models.ListStyleType;
      }

      if (a1 == 0xD00000000000002BLL && 0x800000010157C340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100969438();
        return &type metadata for TSContentLanguage.Models.TextStroke;
      }

      if (a1 == 0xD000000000000036 && 0x800000010158A8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FABC();
        return &type metadata for TSContentLanguage.Models.WritingDirectionType;
      }

      if (a1 == 0xD000000000000026 && 0x800000010158A910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FA68();
        return &type metadata for TSContentLanguage.Models.Offset;
      }

      if (a1 == 0xD000000000000026 && 0x800000010158A940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FA14();
        return &type metadata for TSContentLanguage.Models.Insets;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F9C0();
        return &type metadata for TSContentLanguage.Models.ListProperties;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F96C();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties;
      }

      if (a1 == 0xD000000000000043 && 0x800000010158A9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F918();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.AlignmentType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158AA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F8C4();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.OutlineStyleType;
      }

      if (a1 == 0xD000000000000046 && 0x800000010158AA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F870();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.BorderStyleType;
      }

      if (a1 == 0xD000000000000035 && 0x800000010158AAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F81C();
        return &type metadata for TSContentLanguage.Models.ScaffoldColumnStyle;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158AB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F7C8();
        return &type metadata for TSContentLanguage.Models.ListLabelType;
      }

      if (a1 == 0xD000000000000041 && 0x800000010158AB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F774();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListNumberLabel;
      }

      if (a1 == 0xD000000000000041 && 0x800000010158AB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F720();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListStringLabel;
      }

      if (a1 == 0xD000000000000040 && 0x800000010158ABE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F6CC();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListImageLabel;
      }

      if (a1 == 0xD00000000000002DLL && 0x800000010158AC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F678();
        return &type metadata for TSContentLanguage.Models.ScaffoldFill;
      }

      if (a1 == 0xD000000000000040 && 0x800000010158AC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F624();
        return &type metadata for TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType;
      }

      if (a1 == 0xD000000000000035 && 0x800000010158ACB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F5D0();
        return &type metadata for TSContentLanguage.Models.ScaffoldLayoutStyle;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158ACF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v5 = type metadata accessor for TSContentLanguage.Models.Text();
        v6 = &qword_101A11178;
        v7 = type metadata accessor for TSContentLanguage.Models.Text;
      }

      else
      {
        if (a1 == 0xD000000000000038 && 0x800000010158AD20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100B0F57C();
          return &type metadata for TSContentLanguage.Models.ScaffoldCharacterStyle;
        }

        if (a1 == 0xD000000000000037 && 0x800000010158AD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100B0F528();
          return &type metadata for TSContentLanguage.Models.VerticalAlignmentType;
        }

        if ((a1 != 0xD000000000000036 || 0x800000010156EB70 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v5 = type metadata accessor for AttributedString();
        v6 = &unk_101A11160;
        v7 = &type metadata accessor for AttributedString;
      }
    }
  }

  sub_100B11160(v6, v7);
  return v5;
}

unint64_t sub_100B0F528()
{
  result = qword_101A11168;
  if (!qword_101A11168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11168);
  }

  return result;
}

unint64_t sub_100B0F57C()
{
  result = qword_101A11170;
  if (!qword_101A11170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11170);
  }

  return result;
}

unint64_t sub_100B0F5D0()
{
  result = qword_101A11180;
  if (!qword_101A11180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11180);
  }

  return result;
}

unint64_t sub_100B0F624()
{
  result = qword_101A11188;
  if (!qword_101A11188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11188);
  }

  return result;
}

unint64_t sub_100B0F678()
{
  result = qword_101A11190;
  if (!qword_101A11190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11190);
  }

  return result;
}

unint64_t sub_100B0F6CC()
{
  result = qword_101A11198;
  if (!qword_101A11198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11198);
  }

  return result;
}

unint64_t sub_100B0F720()
{
  result = qword_101A111A0;
  if (!qword_101A111A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111A0);
  }

  return result;
}

unint64_t sub_100B0F774()
{
  result = qword_101A111A8;
  if (!qword_101A111A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111A8);
  }

  return result;
}

unint64_t sub_100B0F7C8()
{
  result = qword_101A111B0;
  if (!qword_101A111B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111B0);
  }

  return result;
}

unint64_t sub_100B0F81C()
{
  result = qword_101A111B8;
  if (!qword_101A111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111B8);
  }

  return result;
}

unint64_t sub_100B0F870()
{
  result = qword_101A111C0;
  if (!qword_101A111C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111C0);
  }

  return result;
}

unint64_t sub_100B0F8C4()
{
  result = qword_101A111C8;
  if (!qword_101A111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111C8);
  }

  return result;
}

unint64_t sub_100B0F918()
{
  result = qword_101A111D0;
  if (!qword_101A111D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111D0);
  }

  return result;
}

unint64_t sub_100B0F96C()
{
  result = qword_101A111D8;
  if (!qword_101A111D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111D8);
  }

  return result;
}

unint64_t sub_100B0F9C0()
{
  result = qword_101A111E0;
  if (!qword_101A111E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111E0);
  }

  return result;
}

unint64_t sub_100B0FA14()
{
  result = qword_101A111E8;
  if (!qword_101A111E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111E8);
  }

  return result;
}

unint64_t sub_100B0FA68()
{
  result = qword_101A111F0;
  if (!qword_101A111F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111F0);
  }

  return result;
}

unint64_t sub_100B0FABC()
{
  result = qword_101A111F8;
  if (!qword_101A111F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A111F8);
  }

  return result;
}

unint64_t sub_100B0FB10()
{
  result = qword_101A11200;
  if (!qword_101A11200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11200);
  }

  return result;
}

unint64_t sub_100B0FB64()
{
  result = qword_101A11208;
  if (!qword_101A11208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11208);
  }

  return result;
}

unint64_t sub_100B0FBB8()
{
  result = qword_101A11210;
  if (!qword_101A11210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11210);
  }

  return result;
}

unint64_t sub_100B0FC0C()
{
  result = qword_101A11218;
  if (!qword_101A11218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11218);
  }

  return result;
}

unint64_t sub_100B0FC60()
{
  result = qword_101A11220;
  if (!qword_101A11220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11220);
  }

  return result;
}

unint64_t sub_100B0FCB4()
{
  result = qword_101A11228;
  if (!qword_101A11228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11228);
  }

  return result;
}

unint64_t sub_100B0FD08()
{
  result = qword_101A11230;
  if (!qword_101A11230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11230);
  }

  return result;
}

unint64_t sub_100B0FD5C()
{
  result = qword_101A11238;
  if (!qword_101A11238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11238);
  }

  return result;
}

unint64_t sub_100B0FDB0()
{
  result = qword_101A11240;
  if (!qword_101A11240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11240);
  }

  return result;
}

unint64_t sub_100B0FE04()
{
  result = qword_101A11248;
  if (!qword_101A11248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11248);
  }

  return result;
}

unint64_t sub_100B0FE58()
{
  result = qword_101A11250;
  if (!qword_101A11250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11250);
  }

  return result;
}

unint64_t sub_100B0FEAC()
{
  result = qword_101A11258;
  if (!qword_101A11258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11258);
  }

  return result;
}

unint64_t sub_100B0FF00()
{
  result = qword_101A11260;
  if (!qword_101A11260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11260);
  }

  return result;
}

unint64_t sub_100B0FF54()
{
  result = qword_101A11268;
  if (!qword_101A11268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11268);
  }

  return result;
}

unint64_t sub_100B0FFA8()
{
  result = qword_101A11270;
  if (!qword_101A11270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11270);
  }

  return result;
}

unint64_t sub_100B0FFFC()
{
  result = qword_101A11278;
  if (!qword_101A11278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11278);
  }

  return result;
}

unint64_t sub_100B10050()
{
  result = qword_101A11280;
  if (!qword_101A11280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11280);
  }

  return result;
}

unint64_t sub_100B100A4()
{
  result = qword_101A11288;
  if (!qword_101A11288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11288);
  }

  return result;
}

unint64_t sub_100B100F8()
{
  result = qword_101A11290;
  if (!qword_101A11290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11290);
  }

  return result;
}

unint64_t sub_100B1014C()
{
  result = qword_101A11298;
  if (!qword_101A11298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11298);
  }

  return result;
}

unint64_t sub_100B101A0()
{
  result = qword_101A112A0;
  if (!qword_101A112A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112A0);
  }

  return result;
}

unint64_t sub_100B101F4()
{
  result = qword_101A112A8;
  if (!qword_101A112A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112A8);
  }

  return result;
}

unint64_t sub_100B10248()
{
  result = qword_101A112B0;
  if (!qword_101A112B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112B0);
  }

  return result;
}

unint64_t sub_100B1029C()
{
  result = qword_101A112B8;
  if (!qword_101A112B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112B8);
  }

  return result;
}

unint64_t sub_100B102F0()
{
  result = qword_101A112C0;
  if (!qword_101A112C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112C0);
  }

  return result;
}

unint64_t sub_100B10344()
{
  result = qword_101A112C8;
  if (!qword_101A112C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112C8);
  }

  return result;
}

unint64_t sub_100B10398()
{
  result = qword_101A112D0;
  if (!qword_101A112D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112D0);
  }

  return result;
}

unint64_t sub_100B103EC()
{
  result = qword_101A112D8;
  if (!qword_101A112D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112D8);
  }

  return result;
}

unint64_t sub_100B10440()
{
  result = qword_101A112E0;
  if (!qword_101A112E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112E0);
  }

  return result;
}

unint64_t sub_100B10494()
{
  result = qword_101A112E8;
  if (!qword_101A112E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112E8);
  }

  return result;
}

unint64_t sub_100B104E8()
{
  result = qword_101A112F0;
  if (!qword_101A112F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112F0);
  }

  return result;
}

unint64_t sub_100B1053C()
{
  result = qword_101A112F8;
  if (!qword_101A112F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A112F8);
  }

  return result;
}

unint64_t sub_100B10590()
{
  result = qword_101A11300;
  if (!qword_101A11300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11300);
  }

  return result;
}

unint64_t sub_100B105E4()
{
  result = qword_101A11308;
  if (!qword_101A11308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11308);
  }

  return result;
}

unint64_t sub_100B10638()
{
  result = qword_101A11310;
  if (!qword_101A11310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11310);
  }

  return result;
}

unint64_t sub_100B1068C()
{
  result = qword_101A11318;
  if (!qword_101A11318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11318);
  }

  return result;
}

unint64_t sub_100B106E0()
{
  result = qword_101A11320;
  if (!qword_101A11320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11320);
  }

  return result;
}

unint64_t sub_100B10734()
{
  result = qword_101A11328;
  if (!qword_101A11328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11328);
  }

  return result;
}

unint64_t sub_100B10788()
{
  result = qword_101A11330;
  if (!qword_101A11330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11330);
  }

  return result;
}

unint64_t sub_100B107DC()
{
  result = qword_101A11338;
  if (!qword_101A11338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11338);
  }

  return result;
}

unint64_t sub_100B10830()
{
  result = qword_101A11340;
  if (!qword_101A11340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11340);
  }

  return result;
}

unint64_t sub_100B10884()
{
  result = qword_101A11348;
  if (!qword_101A11348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11348);
  }

  return result;
}

unint64_t sub_100B108D8()
{
  result = qword_101A11350;
  if (!qword_101A11350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11350);
  }

  return result;
}

unint64_t sub_100B1092C()
{
  result = qword_101A11358;
  if (!qword_101A11358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11358);
  }

  return result;
}

unint64_t sub_100B10980()
{
  result = qword_101A11360;
  if (!qword_101A11360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11360);
  }

  return result;
}

unint64_t sub_100B109D4()
{
  result = qword_101A11368;
  if (!qword_101A11368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11368);
  }

  return result;
}

unint64_t sub_100B10A28()
{
  result = qword_101A11370;
  if (!qword_101A11370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11370);
  }

  return result;
}

unint64_t sub_100B10A7C()
{
  result = qword_101A11378;
  if (!qword_101A11378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11378);
  }

  return result;
}

unint64_t sub_100B10AD0()
{
  result = qword_101A11380;
  if (!qword_101A11380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11380);
  }

  return result;
}

unint64_t sub_100B10B24()
{
  result = qword_101A11388;
  if (!qword_101A11388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11388);
  }

  return result;
}

unint64_t sub_100B10B78()
{
  result = qword_101A11390;
  if (!qword_101A11390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11390);
  }

  return result;
}

unint64_t sub_100B10BCC()
{
  result = qword_101A11398;
  if (!qword_101A11398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11398);
  }

  return result;
}

unint64_t sub_100B10C20()
{
  result = qword_101A113A0;
  if (!qword_101A113A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113A0);
  }

  return result;
}

unint64_t sub_100B10C74()
{
  result = qword_101A113A8;
  if (!qword_101A113A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113A8);
  }

  return result;
}

unint64_t sub_100B10CC8()
{
  result = qword_101A113B0;
  if (!qword_101A113B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113B0);
  }

  return result;
}

unint64_t sub_100B10D1C()
{
  result = qword_101A113B8;
  if (!qword_101A113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113B8);
  }

  return result;
}

unint64_t sub_100B10D70()
{
  result = qword_101A113C0;
  if (!qword_101A113C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113C0);
  }

  return result;
}

unint64_t sub_100B10DC4()
{
  result = qword_101A113C8;
  if (!qword_101A113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113C8);
  }

  return result;
}

unint64_t sub_100B10E18()
{
  result = qword_101A113D0;
  if (!qword_101A113D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113D0);
  }

  return result;
}

unint64_t sub_100B10E6C()
{
  result = qword_101A113D8;
  if (!qword_101A113D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113D8);
  }

  return result;
}

unint64_t sub_100B10EC0()
{
  result = qword_101A113E0;
  if (!qword_101A113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113E0);
  }

  return result;
}

unint64_t sub_100B10F14()
{
  result = qword_101A113E8;
  if (!qword_101A113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113E8);
  }

  return result;
}

unint64_t sub_100B10F68()
{
  result = qword_101A113F0;
  if (!qword_101A113F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113F0);
  }

  return result;
}

unint64_t sub_100B10FBC()
{
  result = qword_101A113F8;
  if (!qword_101A113F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A113F8);
  }

  return result;
}

unint64_t sub_100B11010()
{
  result = qword_101A11400;
  if (!qword_101A11400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11400);
  }

  return result;
}

unint64_t sub_100B11064()
{
  result = qword_101A11408;
  if (!qword_101A11408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11408);
  }

  return result;
}

unint64_t sub_100B110B8()
{
  result = qword_101A11410;
  if (!qword_101A11410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11410);
  }

  return result;
}

unint64_t sub_100B1110C()
{
  result = qword_101A11418;
  if (!qword_101A11418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11418);
  }

  return result;
}

uint64_t sub_100B11160(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.CanvasObject.version.unsafeMutableAddressor()
{
  if (qword_1019F1CC0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.CanvasObject.version;
}

__n128 TSContentLanguage.Models.CanvasObject.canvasObject.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B134A4(v2, v6, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      a1[3] = &type metadata for TSContentLanguage.Models.Group;
      a1[4] = sub_10080D864();
      v13 = swift_allocObject();
      *a1 = v13;
      v14 = *(v6 + 3);
      *(v13 + 48) = *(v6 + 2);
      *(v13 + 64) = v14;
      *(v13 + 80) = *(v6 + 4);
      *(v13 + 96) = *(v6 + 10);
      result = *v6;
      v15 = *(v6 + 1);
      *(v13 + 16) = *v6;
      *(v13 + 32) = v15;
    }

    else
    {
      a1[3] = &type metadata for TSContentLanguage.Models.ConnectionLine;
      a1[4] = sub_10080D8B8();
      v10 = swift_allocObject();
      *a1 = v10;
      memcpy((v10 + 16), v6, 0x180uLL);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    a1[3] = &type metadata for TSContentLanguage.Models.Image;
    a1[4] = sub_10080C7FC();
    v12 = swift_allocObject();
    *a1 = v12;
    memcpy((v12 + 16), v6, 0x190uLL);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      a1[3] = type metadata accessor for TSContentLanguage.Models.Shape();
      a1[4] = sub_100B16644(&qword_101A02650, type metadata accessor for TSContentLanguage.Models.Shape);
      v8 = sub_10002C58C(a1);
      v9 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      a1[3] = type metadata accessor for TSContentLanguage.Models.Textbox();
      a1[4] = sub_100B16644(&qword_101A02648, type metadata accessor for TSContentLanguage.Models.Textbox);
      v8 = sub_10002C58C(a1);
      v9 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100B1343C(v6, v8, v9);
  }

  return result;
}

uint64_t TSContentLanguage.Models.CanvasObject.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100B134A4(v1, v10, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = v10[8];
    }

    else
    {
      memcpy(v16, v10, 0x180uLL);
      v12 = v16[8];

      sub_10098EA50(v16);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v16, v10, sizeof(v16));
    v12 = v16[8];

    sub_100819AA0(v16);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v10, v7, type metadata accessor for TSContentLanguage.Models.Shape);
      v12 = *(v7 + 8);

      v13 = v7;
      v14 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v10, v4, type metadata accessor for TSContentLanguage.Models.Textbox);
      v12 = *(v4 + 8);

      v13 = v4;
      v14 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100048E84(v13, v14);
  }

  return v12;
}

uint64_t TSContentLanguage.Models.CanvasObject.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v2 - 8);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v5 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100B134A4(v1, v10, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = *v10;
    }

    else
    {
      memcpy(v16, v10, 0x180uLL);
      v12 = v16[0];

      sub_10098EA50(v16);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v16, v10, sizeof(v16));
    v12 = v16[0];

    sub_100819AA0(v16);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v10, v7, type metadata accessor for TSContentLanguage.Models.Shape);
      v12 = *v7;

      v13 = v7;
      v14 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v10, v4, type metadata accessor for TSContentLanguage.Models.Textbox);
      v12 = *v4;

      v13 = v4;
      v14 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100048E84(v13, v14);
  }

  return v12;
}

uint64_t TSContentLanguage.Models.CanvasObject.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    memcpy(v14, v21, 0x180uLL);
  }

  else if (swift_dynamicCast())
  {
    v15 = v21[3];
    v14[2] = v21[2];
    v14[3] = v15;
    v14[4] = v21[4];
    *(v14 + 10) = *&v21[5];
    v16 = v21[1];
    *v14 = v21[0];
    v14[1] = v16;
  }

  else if (swift_dynamicCast())
  {
    memcpy(v14, v21, 0x190uLL);
  }

  else if (swift_dynamicCast())
  {
    sub_100B1343C(v10, v14, type metadata accessor for TSContentLanguage.Models.Shape);
  }

  else
  {
    if (!swift_dynamicCast())
    {
      (*(*(a2 - 8) + 8))(a1, a2);
      v18 = 1;
      v17 = v20;
      return (*(v12 + 56))(v17, v18, 1, v11);
    }

    sub_100B1343C(v7, v14, type metadata accessor for TSContentLanguage.Models.Textbox);
  }

  swift_storeEnumTagMultiPayload();
  (*(*(a2 - 8) + 8))(a1, a2);
  v17 = v20;
  sub_100B1343C(v14, v20, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  v18 = 0;
  return (*(v12 + 56))(v17, v18, 1, v11);
}

id sub_100B11C9C()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.CanvasObject.version = result;
  return result;
}

uint64_t type metadata accessor for TSContentLanguage.Models.CanvasObject()
{
  result = qword_101A11538;
  if (!qword_101A11538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static TSContentLanguage.Models.CanvasObject.version.getter()
{
  if (qword_1019F1CC0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.CanvasObject.version;

  return v1;
}

uint64_t TSContentLanguage.Models.CanvasObject.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B1343C(v2, v13, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = *(v13 + 4);
      v25[2] = *(v13 + 3);
      v25[3] = v18;
      *&v25[4] = *(v13 + 10);
      v19 = *(v13 + 2);
      v25[0] = *(v13 + 1);
      v25[1] = v19;

      *&v26[0] = a1;
      *(&v26[0] + 1) = a2;
      v20 = v25[2];
      v21 = v25[3];
      v26[3] = v25[2];
      v26[4] = v25[3];
      v22 = *&v25[4];
      *&v26[5] = *&v25[4];
      v23 = v25[0];
      v26[2] = v25[1];
      v26[1] = v25[0];
      v2[2] = v25[1];
      v2[3] = v20;
      v2[4] = v21;
      *(v2 + 10) = v22;
      *v2 = v26[0];
      v2[1] = v23;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
      v28 = a2;
      v29[2] = v25[2];
      v29[3] = v25[3];
      *&v29[4] = *&v25[4];
      v29[1] = v25[1];
      v29[0] = v25[0];
      sub_100812848(v26, v24);
      return sub_1008127F4(&v27);
    }

    else
    {
      memcpy(v25, v13 + 16, 0x170uLL);

      *&v26[0] = a1;
      *(&v26[0] + 1) = a2;
      memcpy(&v26[1], v25, 0x170uLL);
      memcpy(v2, v26, 0x180uLL);
      swift_storeEnumTagMultiPayload();
      v27 = a1;
      v28 = a2;
      memcpy(v29, v25, 0x170uLL);
      sub_10098E9F4(v26, v24);
      return sub_10098EA50(&v27);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v25, v13 + 16, sizeof(v25));

    *&v26[0] = a1;
    *(&v26[0] + 1) = a2;
    memcpy(&v26[1], v25, 0x180uLL);
    memcpy(v2, v26, 0x190uLL);
    swift_storeEnumTagMultiPayload();
    v27 = a1;
    v28 = a2;
    memcpy(v29, v25, sizeof(v29));
    sub_100819A44(v26, v24);
    return sub_100819AA0(&v27);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v13, v10, type metadata accessor for TSContentLanguage.Models.Shape);

      *v10 = a1;
      v10[1] = a2;
      sub_100B134A4(v10, v2, type metadata accessor for TSContentLanguage.Models.Shape);
      swift_storeEnumTagMultiPayload();
      v15 = v10;
      v16 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v13, v7, type metadata accessor for TSContentLanguage.Models.Textbox);

      *v7 = a1;
      v7[1] = a2;
      sub_100B134A4(v7, v2, type metadata accessor for TSContentLanguage.Models.Textbox);
      swift_storeEnumTagMultiPayload();
      v15 = v7;
      v16 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    return sub_100048E84(v15, v16);
  }
}

uint64_t (*TSContentLanguage.Models.CanvasObject.identifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = TSContentLanguage.Models.CanvasObject.identifier.getter();
  a1[1] = v3;
  return sub_100B12224;
}

uint64_t TSContentLanguage.Models.CanvasObject.geometry.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B134A4(v2, v12, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = *(v12 + 1);
      v24 = *(v12 + 2);
      v25 = v23;
      v15 = *(v12 + 6);
      v16 = *(v12 + 28) | (v12[58] << 16);

LABEL_12:
      v21 = v24;
      v20 = v25;
      goto LABEL_13;
    }

    memcpy(v26, v12, 0x180uLL);
    result = sub_10098EA50(v26);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_100B1343C(v12, v9, type metadata accessor for TSContentLanguage.Models.Shape);
        v14 = *(v9 + 1);
        v24 = *(v9 + 2);
        v25 = v14;
        v15 = *(v9 + 6);
        v16 = *(v9 + 28) | (v9[58] << 16);
        v17 = v9;
        v18 = type metadata accessor for TSContentLanguage.Models.Shape;
      }

      else
      {
        sub_100B1343C(v12, v6, type metadata accessor for TSContentLanguage.Models.Textbox);
        v22 = *(v6 + 1);
        v24 = *(v6 + 2);
        v25 = v22;
        v15 = *(v6 + 6);
        v16 = *(v6 + 28) | (v6[58] << 16);
        v17 = v6;
        v18 = type metadata accessor for TSContentLanguage.Models.Textbox;
      }

      result = sub_100048E84(v17, v18);
      goto LABEL_12;
    }

    memcpy(v26, v12, sizeof(v26));
    result = sub_100819AA0(v26);
  }

  v20 = v26[1];
  v21 = v26[2];
  v15 = *&v26[3];
  v16 = WORD4(v26[3]) | (BYTE10(v26[3]) << 16);
LABEL_13:
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 42) = BYTE2(v16);
  return result;
}

uint64_t TSContentLanguage.Models.CanvasObject.geometry.setter(__int128 *a1)
{
  v3 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v3 - 8);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v6 - 8);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B1343C(v1, v11, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = *(v11 + 3);
      v31[0] = *(v11 + 2);
      v31[1] = v20;
      v21 = *(v11 + 4);
      v32 = *(v11 + 10);
      v22 = v32;
      v24 = *a1;
      v23 = a1[1];
      v31[2] = v21;
      v30 = v24;
      v31[0] = v23;
      *(v31 + 11) = *(a1 + 27);
      v29 = *v11;
      *v1 = v29;
      v1[1] = v24;
      v25 = v31[0];
      v26 = v31[1];
      *(v1 + 10) = v22;
      v1[3] = v26;
      v1[4] = v21;
      v1[2] = v25;
    }

    else
    {
      memcpy(v28, v11, sizeof(v28));
      v17 = a1[1];
      v28[1] = *a1;
      v28[2] = v17;
      *(&v28[2] + 11) = *(a1 + 27);
      memcpy(v1, v28, 0x180uLL);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v33, v11, sizeof(v33));
    v18 = a1[1];
    v33[1] = *a1;
    v33[2] = v18;
    *(&v33[2] + 11) = *(a1 + 27);
    memcpy(v1, v33, 0x190uLL);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v11, v8, type metadata accessor for TSContentLanguage.Models.Shape);
      v13 = a1[1];
      v8[1] = *a1;
      v8[2] = v13;
      *(v8 + 43) = *(a1 + 27);
      v14 = v8;
      v15 = v1;
      v16 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v11, v5, type metadata accessor for TSContentLanguage.Models.Textbox);
      v19 = a1[1];
      v5[1] = *a1;
      v5[2] = v19;
      *(v5 + 43) = *(a1 + 27);
      v14 = v5;
      v15 = v1;
      v16 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100B1343C(v14, v15, v16);
  }

  return swift_storeEnumTagMultiPayload();
}

void (*TSContentLanguage.Models.CanvasObject.geometry.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  *(v3 + 144) = v1;
  TSContentLanguage.Models.CanvasObject.geometry.getter(v3 + 96);
  return sub_100B127FC;
}

void sub_100B127FC(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 3;
  }

  v4 = v2[7];
  *v3 = v2[6];
  v3[1] = v4;
  *(v3 + 27) = *(v2 + 123);
  TSContentLanguage.Models.CanvasObject.geometry.setter(v3);

  free(v2);
}

uint64_t TSContentLanguage.Models.CanvasObject.aspectRatioLocked.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B134A4(v1, v10, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v12 = v10[59];
    }

    else
    {
      memcpy(v16, v10, 0x180uLL);
      sub_10098EA50(v16);
      return v16[59];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v16, v10, sizeof(v16));
    sub_100819AA0(v16);
    return v16[59];
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v10, v7, type metadata accessor for TSContentLanguage.Models.Shape);
      v12 = v7[59];
      v13 = v7;
      v14 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v10, v4, type metadata accessor for TSContentLanguage.Models.Textbox);
      v12 = v4[59];
      v13 = v4;
      v14 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100048E84(v13, v14);
  }

  return v12;
}

uint64_t TSContentLanguage.Models.CanvasObject.aspectRatioLocked.setter(char a1)
{
  v3 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100B1343C(v1, v11, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v16 = v11[1];
    *v1 = *v11;
    *(v1 + 16) = v16;
    *(v1 + 32) = v11[2];
    *(v1 + 43) = *(v11 + 43);
    *(v1 + 59) = a1;
    if (EnumCaseMultiPayload)
    {
      *(v1 + 60) = *(v11 + 60);
      *(v1 + 72) = *(v11 + 72);
    }

    else
    {
      memcpy((v1 + 60), v11 + 60, 0x144uLL);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v17 = v11[1];
    *v1 = *v11;
    *(v1 + 16) = v17;
    *(v1 + 32) = v11[2];
    *(v1 + 43) = *(v11 + 43);
    *(v1 + 59) = a1;
    memcpy((v1 + 60), v11 + 60, 0x154uLL);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v11, v8, type metadata accessor for TSContentLanguage.Models.Shape);
      v8[59] = a1;
      v13 = v8;
      v14 = v1;
      v15 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v11, v5, type metadata accessor for TSContentLanguage.Models.Textbox);
      v5[59] = a1;
      v13 = v5;
      v14 = v1;
      v15 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    sub_100B1343C(v13, v14, v15);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t (*TSContentLanguage.Models.CanvasObject.aspectRatioLocked.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = TSContentLanguage.Models.CanvasObject.aspectRatioLocked.getter();
  return sub_100B12D38;
}

uint64_t TSContentLanguage.Models.CanvasObject.description.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v12);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B1343C(v3, v14, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v18 = *(v14 + 1);
    if (EnumCaseMultiPayload)
    {
      v30[0] = *v14;
      v30[1] = v18;
      v23 = *(v14 + 3);
      v30[2] = *(v14 + 2);
      v30[3] = v23;
      v24 = *(v14 + 10);

      v25 = v30[0];
      v26 = v30[1];
      v35[0] = v30[0];
      v35[1] = v30[1];
      v27 = v30[2];
      v28 = v30[3];
      v35[2] = v30[2];
      v35[3] = v30[3];
      *&v35[4] = a1;
      *(&v35[4] + 1) = a2;
      *&v35[5] = v24;
      v3[10] = v24;
      *(v3 + 2) = v27;
      *(v3 + 3) = v28;
      *v3 = v25;
      *(v3 + 1) = v26;
      *(v3 + 4) = v35[4];
      swift_storeEnumTagMultiPayload();
      v36 = v30[0];
      v37 = v30[1];
      v38 = v30[2];
      v39 = v30[3];
      v40 = a1;
      v41 = a2;
      v42[0] = v24;
      sub_100812848(v35, v29);
      return sub_1008127F4(&v36);
    }

    else
    {
      v31 = *v14;
      v32 = v18;
      v19 = *(v14 + 3);
      v33 = *(v14 + 2);
      v34 = v19;
      memcpy(v30, v14 + 80, 0x130uLL);

      v35[0] = v31;
      v35[1] = v32;
      v35[2] = v33;
      v35[3] = v34;
      *&v35[4] = a1;
      *(&v35[4] + 1) = a2;
      memcpy(&v35[5], v30, 0x130uLL);
      memcpy(v3, v35, 0x180uLL);
      swift_storeEnumTagMultiPayload();
      v36 = v31;
      v37 = v32;
      v38 = v33;
      v39 = v34;
      v40 = a1;
      v41 = a2;
      memcpy(v42, v30, 0x130uLL);
      sub_10098E9F4(v35, v29);
      return sub_10098EA50(&v36);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v21 = *(v14 + 1);
    v31 = *v14;
    v32 = v21;
    v22 = *(v14 + 3);
    v33 = *(v14 + 2);
    v34 = v22;
    memcpy(v30, v14 + 80, sizeof(v30));

    v35[0] = v31;
    v35[1] = v32;
    v35[2] = v33;
    v35[3] = v34;
    *&v35[4] = a1;
    *(&v35[4] + 1) = a2;
    memcpy(&v35[5], v30, 0x140uLL);
    memcpy(v3, v35, 0x190uLL);
    swift_storeEnumTagMultiPayload();
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v40 = a1;
    v41 = a2;
    memcpy(v42, v30, sizeof(v42));
    sub_100819A44(v35, v29);
    return sub_100819AA0(&v36);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B1343C(v14, v11, type metadata accessor for TSContentLanguage.Models.Shape);

      *(v11 + 8) = a1;
      *(v11 + 9) = a2;
      sub_100B134A4(v11, v3, type metadata accessor for TSContentLanguage.Models.Shape);
      swift_storeEnumTagMultiPayload();
      v16 = v11;
      v17 = type metadata accessor for TSContentLanguage.Models.Shape;
    }

    else
    {
      sub_100B1343C(v14, v8, type metadata accessor for TSContentLanguage.Models.Textbox);

      *(v8 + 8) = a1;
      *(v8 + 9) = a2;
      sub_100B134A4(v8, v3, type metadata accessor for TSContentLanguage.Models.Textbox);
      swift_storeEnumTagMultiPayload();
      v16 = v8;
      v17 = type metadata accessor for TSContentLanguage.Models.Textbox;
    }

    return sub_100048E84(v16, v17);
  }
}

uint64_t (*TSContentLanguage.Models.CanvasObject.description.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = TSContentLanguage.Models.CanvasObject.description.getter();
  a1[1] = v3;
  return sub_100B1320C;
}

uint64_t sub_100B13224(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t TSContentLanguage.Models.CanvasObject.init(connectionLine:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(a2, __src, 0x180uLL);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.CanvasObject.init(group:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TSContentLanguage.Models.CanvasObject.init(image:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(a2, __src, 0x190uLL);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100B133E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100B1343C(a1, a3, a2);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100B1343C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B134A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B13524()
{
  String.hash(into:)();
}

unint64_t sub_100B13648@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B16838(*a1);
  *a2 = result;
  return result;
}

void sub_100B13678(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00656E694C6E6FLL;
  v4 = 0x697463656E6E6F63;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6570616873;
  if (v2 != 3)
  {
    v8 = 0x786F6274786574;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x70756F7267;
  if (v2 != 1)
  {
    v9 = 0x6567616D69;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100B13764()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x6570616873;
  if (v1 != 3)
  {
    v4 = 0x786F6274786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x70756F7267;
  if (v1 != 1)
  {
    v5 = 0x6567616D69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100B1384C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B16838(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B13880(uint64_t a1)
{
  v2 = sub_100B15008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B138BC(uint64_t a1)
{
  v2 = sub_100B15008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.CanvasObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = sub_1005B981C(&qword_101A11428);
  __chkstk_darwin(v3 - 8);
  v127 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v115 - v6;
  v130 = type metadata accessor for TSContentLanguage.Models.Textbox();
  v122 = *(v130 - 8);
  __chkstk_darwin(v130);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v120 = &v115 - v9;
  v10 = sub_1005B981C(&qword_101A11430);
  __chkstk_darwin(v10 - 8);
  v132 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v129 = &v115 - v13;
  v134 = type metadata accessor for TSContentLanguage.Models.Shape();
  v128 = *(v134 - 8);
  __chkstk_darwin(v134);
  v123 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v124 = &v115 - v16;
  v17 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v17 - 8);
  v125 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v131 = &v115 - v20;
  __chkstk_darwin(v21);
  v135 = &v115 - v22;
  __chkstk_darwin(v23);
  v137 = &v115 - v24;
  __chkstk_darwin(v25);
  v140 = (&v115 - v26);
  v27 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v27 - 8);
  v141 = v27;
  v142 = v28;
  __chkstk_darwin(v27);
  v121 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v133 = &v115 - v31;
  __chkstk_darwin(v32);
  v136 = &v115 - v33;
  __chkstk_darwin(v34);
  v138 = &v115 - v35;
  __chkstk_darwin(v36);
  v38 = &v115 - v37;
  v39 = sub_1005B981C(&qword_101A11438);
  v143 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v115 - v40;
  v42 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v42);
  v44 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[3];
  v149 = a1;
  sub_100020E58(a1, v45);
  sub_100B15008();
  v46 = v144;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
    goto LABEL_2;
  }

  v144 = v38;
  v117 = v44;
  v118 = v42;
  LOBYTE(v147[0]) = 5;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v149;
  if (v49)
  {
    if (v48 == 0xD00000000000002DLL && v49 == 0x800000010158ADA0)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v53[1] = 0;
        v53[2] = 0;
        *v53 = 0;
        swift_willThrow();
        (*(v143 + 8))(v41, v39);
        goto LABEL_18;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v146[0]) = 6;
  sub_100B16644(&qword_101A00400, type metadata accessor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = *&v147[0];
  if (*&v147[0])
  {
    if (qword_1019F1CC0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.CanvasObject.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v51[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v52 = xmmword_101463530;
      *(v52 + 16) = 0;
      swift_willThrow();

      (*(v143 + 8))(v41, v39);
      goto LABEL_18;
    }
  }

  sub_100020E58(v47, v47[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v148 = 0;
  sub_100B1505C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = 0;
  memcpy(v146, v147, 0x180uLL);
  if (sub_100B15E2C(v146) != 1)
  {

    memcpy(v145, v147, 0x180uLL);
    (*(v143 + 8))(v41, v39);
    v67 = v117;
    memcpy(v117, v145, 0x180uLL);
    goto LABEL_31;
  }

  v115 = v41;

  memcpy(v145, v147, 0x180uLL);
  sub_10000CAAC(v145, &qword_101A11478);
  v56 = v143;
  v57 = v39;
  sub_100020E58(v47, v47[3]);
  v58 = dispatch thunk of Decoder.userInfo.getter();
  v145[0] = 1;
  sub_100B15D6C();
  v59 = v116;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = v59;
  if (v59)
  {
    v60 = v137;
    CodingUserInfoKey.init(rawValue:)();
    v62 = v141;
    v61 = v142;
    result = (*(v142 + 48))(v60, 1, v141);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_78;
    }

    v63 = *(v61 + 32);
    v64 = v138;
    v63(v138, v60, v62);
    if (!*(v58 + 16))
    {
      goto LABEL_53;
    }

    v65 = sub_1007C8514(v64);
    v64 = v138;
    if ((v66 & 1) == 0)
    {
      goto LABEL_53;
    }

    sub_100064288(*(v58 + 56) + 32 * v65, v147);
    (*(v142 + 8))(v64, v62);
    if (!swift_dynamicCast() || (v146[0] & 1) == 0)
    {
      goto LABEL_17;
    }

    v116 = 0;
  }

  else
  {
    if (*&v147[5])
    {

      v146[2] = v147[2];
      v146[3] = v147[3];
      v146[4] = v147[4];
      *&v146[5] = *&v147[5];
      v146[0] = v147[0];
      v146[1] = v147[1];
      (*(v56 + 8))(v115, v57);
      v68 = v146[3];
      v67 = v117;
      v117[2] = v146[2];
      v67[3] = v68;
      v67[4] = v146[4];
      *(v67 + 10) = *&v146[5];
      v69 = v146[1];
      *v67 = v146[0];
      v67[1] = v69;
      goto LABEL_31;
    }

    v146[2] = v147[2];
    v146[3] = v147[3];
    v146[4] = v147[4];
    *&v146[5] = *&v147[5];
    v146[0] = v147[0];
    v146[1] = v147[1];
    sub_10000CAAC(v146, &qword_101A11470);
  }

  sub_100020E58(v47, v47[3]);
  v71 = dispatch thunk of Decoder.userInfo.getter();
  v148 = 2;
  sub_100B15DC0();
  v72 = v116;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = v72;
  if (!v72)
  {
    memcpy(v146, v147, sizeof(v146));
    if (sub_100B15E14(v146) == 1)
    {

      memcpy(v145, v147, sizeof(v145));
      sub_10000CAAC(v145, &qword_101A11468);
      goto LABEL_46;
    }

    memcpy(v145, v147, sizeof(v145));
    (*(v56 + 8))(v115, v57);
    v67 = v117;
    memcpy(v117, v145, 0x190uLL);
LABEL_31:
    swift_storeEnumTagMultiPayload();
    v70 = v139;
LABEL_32:
    sub_100B1343C(v67, v70, type metadata accessor for TSContentLanguage.Models.CanvasObject);
    return sub_100005070(v47);
  }

  v73 = v135;
  CodingUserInfoKey.init(rawValue:)();
  v75 = v141;
  v74 = v142;
  result = (*(v142 + 48))(v73, 1, v141);
  if (result == 1)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v76 = *(v74 + 32);
  v77 = v136;
  v76(v136, v73, v75);
  if (!*(v71 + 16) || (v78 = sub_1007C8514(v77), v77 = v136, (v79 & 1) == 0))
  {
    (*(v142 + 8))(v77, v75);
    goto LABEL_17;
  }

  sub_100064288(*(v71 + 56) + 32 * v78, v147);
  (*(v142 + 8))(v77, v75);
  if (!swift_dynamicCast() || (v146[0] & 1) == 0)
  {
    goto LABEL_17;
  }

  v116 = 0;
LABEL_46:
  sub_100020E58(v47, v47[3]);
  v80 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v146[0]) = 3;
  sub_100B16644(&qword_101A11460, type metadata accessor for TSContentLanguage.Models.Shape);
  v81 = v132;
  v82 = v116;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = v82;
  if (v82)
  {
    v83 = v131;
    CodingUserInfoKey.init(rawValue:)();
    v62 = v141;
    v84 = v142;
    result = (*(v142 + 48))(v83, 1, v141);
    if (result != 1)
    {
      v85 = *(v84 + 32);
      v64 = v133;
      v85(v133, v83, v62);
      if (*(v80 + 16))
      {
        v86 = sub_1007C8514(v64);
        v64 = v133;
        if (v87)
        {
          sub_100064288(*(v80 + 56) + 32 * v86, v147);
          (*(v142 + 8))(v64, v62);
          if (swift_dynamicCast() && (v145[0] & 1) != 0)
          {

            v89 = v128;
            v88 = v129;
            v90 = v134;
            (*(v128 + 56))(v129, 1, 1, v134);
            v116 = 0;
            v140 = *(v89 + 48);
            v144 = (v89 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
            v91 = v140(v88, 1, v90);
            goto LABEL_59;
          }

LABEL_17:
          swift_willThrow();

          (*(v56 + 8))(v115, v57);
          goto LABEL_18;
        }
      }

LABEL_53:
      (*(v142 + 8))(v64, v62);
      goto LABEL_17;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v92 = v128;
  v93 = *(v128 + 48);
  v144 = (v128 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v94 = v81;
  v95 = v81;
  v96 = v134;
  v140 = v93;
  if (v93(v94, 1, v134) == 1)
  {

    sub_10000CAAC(v95, &qword_101A11430);
    v88 = v129;
    (*(v92 + 56))(v129, 1, 1, v96);
  }

  else
  {
    v97 = v95;
    v98 = v123;
    sub_100B1343C(v97, v123, type metadata accessor for TSContentLanguage.Models.Shape);

    v88 = v129;
    sub_100B1343C(v98, v129, type metadata accessor for TSContentLanguage.Models.Shape);
    (*(v92 + 56))(v88, 0, 1, v96);
  }

  v91 = v140(v88, 1, v96);
LABEL_59:
  if (v91 != 1)
  {
    (*(v143 + 8))(v115, v57);
    v108 = v88;
    v109 = v124;
    sub_100B1343C(v108, v124, type metadata accessor for TSContentLanguage.Models.Shape);
    v110 = v109;
    v67 = v117;
    sub_100B1343C(v110, v117, type metadata accessor for TSContentLanguage.Models.Shape);
    goto LABEL_31;
  }

  sub_10000CAAC(v88, &qword_101A11430);
  sub_100020E58(v47, v47[3]);
  v99 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v146[0]) = 4;
  sub_100B16644(&qword_101A00470, type metadata accessor for TSContentLanguage.Models.Textbox);
  v100 = v57;
  v101 = v116;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = v101;
  if (!v101)
  {
    v111 = *(v122 + 48);
    if (v111(v127, 1, v130) == 1)
    {

      (*(v143 + 8))(v115, v57);
      sub_10000CAAC(v127, &qword_101A11428);
      (*(v122 + 56))(v126, 1, 1, v130);
    }

    else
    {
      v112 = v119;
      sub_100B1343C(v127, v119, type metadata accessor for TSContentLanguage.Models.Textbox);

      (*(v143 + 8))(v115, v100);
      v113 = v126;
      sub_100B1343C(v112, v126, type metadata accessor for TSContentLanguage.Models.Textbox);
      (*(v122 + 56))(v113, 0, 1, v130);
    }

    v107 = v111(v126, 1, v130);
    goto LABEL_74;
  }

  v102 = v125;
  CodingUserInfoKey.init(rawValue:)();
  result = (*(v142 + 48))(v102, 1, v141);
  if (result != 1)
  {
    v103 = v121;
    (*(v142 + 32))(v121, v125, v141);
    if (*(v99 + 16) && (v104 = sub_1007C8514(v103), (v105 & 1) != 0))
    {
      sub_100064288(*(v99 + 56) + 32 * v104, v147);
      (*(v142 + 8))(v103, v141);
      if (swift_dynamicCast() && (v145[0] & 1) != 0)
      {

        (*(v143 + 8))(v115, v57);
        v106 = v122;
        (*(v122 + 56))(v126, 1, 1, v130);
        v116 = 0;
        v107 = (*(v106 + 48))(v126, 1, v130);
LABEL_74:
        if (v107 == 1)
        {
          sub_10000CAAC(v126, &qword_101A11428);
          v47 = v149;
          goto LABEL_19;
        }

        v114 = v120;
        sub_100B1343C(v126, v120, type metadata accessor for TSContentLanguage.Models.Textbox);
        v67 = v117;
        sub_100B1343C(v114, v117, type metadata accessor for TSContentLanguage.Models.Textbox);
        swift_storeEnumTagMultiPayload();
        v70 = v139;
        v47 = v149;
        goto LABEL_32;
      }
    }

    else
    {
      (*(v142 + 8))(v103, v141);
    }

    swift_willThrow();

    (*(v143 + 8))(v115, v57);
LABEL_2:
    v47 = v149;
LABEL_18:
    sub_100020E58(v47, v47[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    sub_100020E58(v147, *(&v147[1] + 1));
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();

    sub_100005070(v147);
LABEL_19:
    sub_1007C8648();
    swift_allocError();
    *v55 = xmmword_101478600;
    *(v55 + 16) = 0;
    swift_willThrow();
    return sub_100005070(v47);
  }

LABEL_80:
  __break(1u);
  return result;
}

unint64_t sub_100B15008()
{
  result = qword_101A11440;
  if (!qword_101A11440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11440);
  }

  return result;
}

unint64_t sub_100B1505C()
{
  result = qword_101A11448;
  if (!qword_101A11448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11448);
  }

  return result;
}

uint64_t TSContentLanguage.Models.CanvasObject.encode(to:)(void *a1)
{
  v2 = v1;
  v41 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v41);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v5);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1005B981C(&qword_101A11480);
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v41 - v9;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B134A4(v2, v21, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = *(v21 + 3);
      v50[2] = *(v21 + 2);
      v50[3] = v36;
      v50[4] = *(v21 + 4);
      *&v50[5] = *(v21 + 10);
      v37 = *(v21 + 1);
      v50[0] = *v21;
      v50[1] = v37;
      sub_100020E58(a1, a1[3]);
      sub_100B15008();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v49[2] = v50[2];
      v49[3] = v50[3];
      v49[4] = v50[4];
      *&v49[5] = *&v50[5];
      v49[0] = v50[0];
      v49[1] = v50[1];
      v48 = 1;
      sub_100B15E98();
      v38 = v46;
      v29 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v38)
      {
        (*(v51 + 8))(v15, v29);
        return sub_1008127F4(v50);
      }

      sub_1008127F4(v50);
      LOBYTE(v49[0]) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      *&v49[0] = static TSContentLanguage.Models.CanvasObject.version;
      v48 = 6;
      type metadata accessor for TSCLVersion();
      sub_100B16644(&qword_101A00458, type metadata accessor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = *(v51 + 8);
      v40 = v15;
    }

    else
    {
      memcpy(v50, v21, 0x180uLL);
      sub_100020E58(a1, a1[3]);
      sub_100B15008();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      memcpy(v49, v50, 0x180uLL);
      v48 = 0;
      sub_100B15EEC();
      v28 = v46;
      v29 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v28)
      {
        (*(v51 + 8))(v18, v29);
        return sub_10098EA50(v50);
      }

      sub_10098EA50(v50);
      LOBYTE(v49[0]) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      *&v49[0] = static TSContentLanguage.Models.CanvasObject.version;
      v48 = 6;
      type metadata accessor for TSCLVersion();
      sub_100B16644(&qword_101A00458, type metadata accessor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = *(v51 + 8);
      v40 = v18;
    }

    return v39(v40, v29);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    memcpy(v50, v21, 0x190uLL);
    sub_100020E58(a1, a1[3]);
    sub_100B15008();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    memcpy(v49, v50, sizeof(v49));
    v48 = 2;
    sub_100B15E44();
    v30 = v46;
    v31 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v30)
    {
      (*(v51 + 8))(v12, v31);
      return sub_100819AA0(v50);
    }

    else
    {
      sub_100819AA0(v50);
      LOBYTE(v49[0]) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      *&v49[0] = static TSContentLanguage.Models.CanvasObject.version;
      v48 = 6;
      type metadata accessor for TSCLVersion();
      sub_100B16644(&qword_101A00458, type metadata accessor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v51 + 8))(v12, v31);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v23 = v44;
    sub_100B1343C(v21, v44, type metadata accessor for TSContentLanguage.Models.Shape);
    sub_100020E58(a1, a1[3]);
    sub_100B15008();
    v24 = v42;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v50[0]) = 3;
    sub_100B16644(&qword_101A11488, type metadata accessor for TSContentLanguage.Models.Shape);
    v25 = v46;
    v26 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v25)
    {
      LOBYTE(v50[0]) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      *&v50[0] = static TSContentLanguage.Models.CanvasObject.version;
      LOBYTE(v49[0]) = 6;
      type metadata accessor for TSCLVersion();
      sub_100B16644(&qword_101A00458, type metadata accessor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v51 + 8))(v24, v26);
    return sub_100048E84(v23, type metadata accessor for TSContentLanguage.Models.Shape);
  }

  else
  {
    v32 = v45;
    sub_100B1343C(v21, v45, type metadata accessor for TSContentLanguage.Models.Textbox);
    sub_100020E58(a1, a1[3]);
    sub_100B15008();
    v33 = v43;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    LOBYTE(v50[0]) = 4;
    sub_100B16644(&qword_101A00478, type metadata accessor for TSContentLanguage.Models.Textbox);
    v34 = v46;
    v35 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v34)
    {
      LOBYTE(v50[0]) = 5;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F1CC0 != -1)
      {
        swift_once();
      }

      *&v50[0] = static TSContentLanguage.Models.CanvasObject.version;
      LOBYTE(v49[0]) = 6;
      type metadata accessor for TSCLVersion();
      sub_100B16644(&qword_101A00458, type metadata accessor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v51 + 8))(v33, v35);
    return sub_100048E84(v32, type metadata accessor for TSContentLanguage.Models.Textbox);
  }
}

double sub_100B15C70@<D0>(_OWORD *a1@<X8>)
{
  TSContentLanguage.Models.CanvasObject.geometry.getter(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 11);
  *(a1 + 27) = *(v5 + 11);
  return result;
}

void (*sub_100B15CB4(uint64_t *a1))(__int128 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  *(v3 + 144) = v1;
  TSContentLanguage.Models.CanvasObject.geometry.getter(v3 + 96);
  return sub_100B127FC;
}

unint64_t sub_100B15D6C()
{
  result = qword_101A11450;
  if (!qword_101A11450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11450);
  }

  return result;
}

unint64_t sub_100B15DC0()
{
  result = qword_101A11458;
  if (!qword_101A11458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11458);
  }

  return result;
}

uint64_t sub_100B15E14(uint64_t a1)
{
  v1 = *(a1 + 297);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B15E2C(uint64_t a1)
{
  v1 = *(a1 + 281);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100B15E44()
{
  result = qword_101A11490;
  if (!qword_101A11490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11490);
  }

  return result;
}

unint64_t sub_100B15E98()
{
  result = qword_101A11498;
  if (!qword_101A11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11498);
  }

  return result;
}

unint64_t sub_100B15EEC()
{
  result = qword_101A114A0;
  if (!qword_101A114A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A114A0);
  }

  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO12CanvasObjectO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for TSContentLanguage.Models.Textbox();
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TSContentLanguage.Models.Shape();
  __chkstk_darwin(v4 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v21 = sub_1005B981C(&qword_101A11588);
  __chkstk_darwin(v21 - 8);
  v23 = &v39 - v22;
  v25 = &v39 + *(v24 + 56) - v22;
  sub_100B134A4(v41, &v39 - v22, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  sub_100B134A4(v42, v25, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100B134A4(v23, v17, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      v32 = *(v17 + 3);
      v43[2] = *(v17 + 2);
      v43[3] = v32;
      v43[4] = *(v17 + 4);
      *&v43[5] = *(v17 + 10);
      v33 = *(v17 + 1);
      v43[0] = *v17;
      v43[1] = v33;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *(v25 + 3);
        v44[2] = *(v25 + 2);
        v44[3] = v34;
        v44[4] = *(v25 + 4);
        *&v44[5] = *(v25 + 10);
        v35 = *(v25 + 1);
        v44[0] = *v25;
        v44[1] = v35;
        v29 = _s8Freeform17TSContentLanguageO6ModelsO5GroupV23__derived_struct_equalsySbAG_AGtFZ_0(v43, v44);
        sub_1008127F4(v43);
        sub_1008127F4(v44);
        goto LABEL_23;
      }

      sub_1008127F4(v43);
    }

    else
    {
      sub_100B134A4(v23, v20, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      memcpy(v43, v20, 0x180uLL);
      if (!swift_getEnumCaseMultiPayload())
      {
        memcpy(v44, v25, 0x180uLL);
        v29 = _s8Freeform17TSContentLanguageO6ModelsO14ConnectionLineV23__derived_struct_equalsySbAG_AGtFZ_0(v43, v44);
        sub_10098EA50(v43);
        sub_10098EA50(v44);
        goto LABEL_23;
      }

      sub_10098EA50(v43);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_100B134A4(v23, v14, type metadata accessor for TSContentLanguage.Models.CanvasObject);
    memcpy(v43, v14, sizeof(v43));
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v44, v25, 0x190uLL);
      v29 = _s8Freeform17TSContentLanguageO6ModelsO5ImageV23__derived_struct_equalsySbAG_AGtFZ_0(v43, v44);
      sub_100819AA0(v43);
      sub_100819AA0(v44);
LABEL_23:
      sub_100048E84(v23, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      return v29 & 1;
    }

    sub_100819AA0(v43);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100B134A4(v23, v11, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v27 = type metadata accessor for TSContentLanguage.Models.Shape;
        v28 = v39;
        sub_100B1343C(v25, v39, type metadata accessor for TSContentLanguage.Models.Shape);
        v29 = _s8Freeform17TSContentLanguageO6ModelsO5ShapeV23__derived_struct_equalsySbAG_AGtFZ_0(v11, v28);
        sub_100048E84(v28, type metadata accessor for TSContentLanguage.Models.Shape);
        v30 = v11;
LABEL_13:
        sub_100048E84(v30, v27);
        goto LABEL_23;
      }

      v36 = type metadata accessor for TSContentLanguage.Models.Shape;
      v37 = v11;
    }

    else
    {
      sub_100B134A4(v23, v8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v27 = type metadata accessor for TSContentLanguage.Models.Textbox;
        v31 = v40;
        sub_100B1343C(v25, v40, type metadata accessor for TSContentLanguage.Models.Textbox);
        v29 = _s8Freeform17TSContentLanguageO6ModelsO7TextboxV23__derived_struct_equalsySbAG_AGtFZ_0(v8);
        sub_100048E84(v31, type metadata accessor for TSContentLanguage.Models.Textbox);
        v30 = v8;
        goto LABEL_13;
      }

      v36 = type metadata accessor for TSContentLanguage.Models.Textbox;
      v37 = v8;
    }

    sub_100048E84(v37, v36);
  }

  sub_10000CAAC(v23, &qword_101A11588);
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_100B164BC(uint64_t a1)
{
  result = sub_100B16644(&qword_101A114A8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B16514(uint64_t a1)
{
  *(a1 + 8) = sub_100B16644(&qword_101A114B0, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  result = sub_100B16644(&qword_101A114A8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B16598(void *a1)
{
  a1[2] = sub_100B16644(&qword_101A00898, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  a1[3] = sub_100B16644(&qword_101A114B8, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  result = sub_100B16644(&qword_101A114C0, type metadata accessor for TSContentLanguage.Models.CanvasObject);
  a1[4] = result;
  return result;
}

uint64_t sub_100B16644(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B1668C()
{
  result = type metadata accessor for TSContentLanguage.Models.Shape();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TSContentLanguage.Models.Textbox();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100B16734()
{
  result = qword_101A11570;
  if (!qword_101A11570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11570);
  }

  return result;
}

unint64_t sub_100B1678C()
{
  result = qword_101A11578;
  if (!qword_101A11578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11578);
  }

  return result;
}

unint64_t sub_100B167E4()
{
  result = qword_101A11580;
  if (!qword_101A11580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11580);
  }

  return result;
}

unint64_t sub_100B16838(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875340, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

__n128 TSContentLanguage.Models.Path.BezierPath.init(path:space:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4 & 1;
  return result;
}

uint64_t *TSContentLanguage.Models.Path.version.unsafeMutableAddressor()
{
  if (qword_1019F1CC8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Path.version;
}

__n128 TSContentLanguage.Models.Path.init(bezier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v5;
  *(a2 + 48) = v3 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.Path.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  return result;
}

uint64_t sub_100B16A4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265697A6562;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265697A6562;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100B16B64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B16C10()
{
  String.hash(into:)();
}

Swift::Int sub_100B16CA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B16D50@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B17CDC(*a1);
  *a2 = result;
  return result;
}

void sub_100B16D80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265697A6562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100B16DE8()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265697A6562;
  }
}

unint64_t sub_100B16E4C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B17CDC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B16E74(uint64_t a1)
{
  v2 = sub_100B18198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B16EB0(uint64_t a1)
{
  v2 = sub_100B18198();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Path.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100B17D28(a1, v5);
  if (!v2)
  {
    return sub_1007CF0A8(v5, a2);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Path.encode(to:)(void *a1)
{
  sub_1007CF0A8(v1, v24);
  v3 = v24[0];
  v4 = v24[1];
  v5 = v27;
  v6 = sub_1005B981C(&qword_101A11590);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = a1[3];
  v16 = v26;
  v17 = v25;
  v11 = a1;
  v13 = v12;
  sub_100020E58(v11, v10);
  sub_100B18198();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v3;
  v20 = v4;
  v21 = v17;
  v22 = v16;
  v23 = v5;
  v28 = 0;
  sub_100B181EC();
  v14 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v7 + 8))(v9, v13);
  }

  LOBYTE(v19) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1CC8 != -1)
  {
    swift_once();
  }

  v19 = static TSContentLanguage.Models.Path.version;
  v28 = 2;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v13);
}

uint64_t sub_100B1721C(uint64_t a1, uint64_t a2)
{
  sub_1007CF0A8(a1, &v4);
  sub_1007CF0A8(a2, v5);
  return _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0() & 1;
}

id sub_100B1729C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for TSCLVersion();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v4[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v6.receiver = v4;
  v6.super_class = v3;
  result = objc_msgSendSuper2(&v6, "init");
  *a2 = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Path.BezierPath.version.unsafeMutableAddressor()
{
  if (qword_1019F1CD0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Path.BezierPath.version;
}

__n128 TSContentLanguage.Models.Path.BezierPath.space.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Path.BezierPath.space.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

Swift::Int sub_100B173B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B1747C()
{
  String.hash(into:)();
}

Swift::Int sub_100B1752C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B175EC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B18240(*a1);
  *a2 = result;
  return result;
}

void sub_100B1761C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1752457584;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6563617073;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B1769C()
{
  v1 = 1752457584;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x6563617073;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100B17718@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B18240(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B17740(uint64_t a1)
{
  v2 = sub_100B186B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B1777C(uint64_t a1)
{
  v2 = sub_100B186B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Path.BezierPath.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B1828C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Path.BezierPath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A115A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B186B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v13 = *(v3 + 16);
    v14 = v9;
    v15 = *(v3 + 48);
    v12 = 1;
    sub_100B18704();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1CD0 != -1)
    {
      swift_once();
    }

    *&v13 = static TSContentLanguage.Models.Path.BezierPath.version;
    v12 = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Path.BezierPath.isEquivalent(to:)(uint64_t a1)
{
  v3 = *v1 == *a1 && *(v1 + 8) == *(a1 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 48) == 1)
  {
    return (*(a1 + 48) & 1) != 0;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  result = sub_1007C87EC(*(v1 + 16), *(a1 + 16));
  if (result)
  {
    result = sub_1007C87EC(v5, v8);
    if (result)
    {
      result = sub_1007C87EC(v7, v10);
      if (result)
      {
        return sub_1007C87EC(v6, v9);
      }
    }
  }

  return result;
}

id sub_100B17B64(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t sub_100B17BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO4PathO06BezierE0V23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO4PathO06BezierE0V23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (*(a1 + 48))
    {
      if ((*(a2 + 48) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 48) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_10148D100)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_100B17CDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875408, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B17D28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A009A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B18198();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v24[0]) = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000024 && v10 == 0x8000000101589FD0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v24, v24[3]);
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(v24);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101478600;
        *(v15 + 16) = 0;
        swift_willThrow();
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v30 = 2;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v24[0];
  if (v24[0])
  {
    if (qword_1019F1CC8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Path.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B6B94(0, v18, 0, &v25);
  (*(v6 + 8))(v8, v5);

  v19 = v26;
  if (!v26)
  {
    goto LABEL_13;
  }

  v20 = v29;
  v21 = v25;
  result = sub_100005070(a1);
  v22 = v27;
  v23 = v28;
  *a2 = v21;
  *(a2 + 8) = v19;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 48) = v20 & 1;
  return result;
}

unint64_t sub_100B18198()
{
  result = qword_101A11598;
  if (!qword_101A11598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11598);
  }

  return result;
}

unint64_t sub_100B181EC()
{
  result = qword_101A115A0;
  if (!qword_101A115A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115A0);
  }

  return result;
}

unint64_t sub_100B18240(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875470, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B1828C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A00998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B186B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v29) = 2;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000030 && v10 == 0x800000010158A000)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v26 = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v29;
  if (v29)
  {
    if (qword_1019F1CD0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Path.BezierPath.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v15[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v16 = xmmword_101463530;
      *(v16 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v17 = dispatch thunk of Decoder.userInfo.getter();
  v24 = sub_1007BE804(0, v17, 0, 0, 0, 0);
  v25 = v18;

  sub_100020E58(a1, a1[3]);
  v19 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B6EA4(1, v19, 0, v27);
  v20 = v28;
  (*(v6 + 8))(v8, v5);

  result = sub_100005070(a1);
  v21 = v27[0];
  v22 = v27[1];
  v23 = v25;
  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_100B186B0()
{
  result = qword_101A115B0;
  if (!qword_101A115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115B0);
  }

  return result;
}

unint64_t sub_100B18704()
{
  result = qword_101A115B8;
  if (!qword_101A115B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115B8);
  }

  return result;
}

unint64_t sub_100B18758(uint64_t a1)
{
  *(a1 + 8) = sub_100B18788();
  result = sub_100B187DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B18788()
{
  result = qword_101A115C0;
  if (!qword_101A115C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115C0);
  }

  return result;
}

unint64_t sub_100B187DC()
{
  result = qword_101A115C8;
  if (!qword_101A115C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115C8);
  }

  return result;
}

unint64_t sub_100B18870()
{
  result = qword_101A115D0;
  if (!qword_101A115D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115D0);
  }

  return result;
}

unint64_t sub_100B188C4(uint64_t a1)
{
  result = sub_100B10638();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B1892C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100B18980()
{
  result = qword_101A115D8;
  if (!qword_101A115D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115D8);
  }

  return result;
}

uint64_t sub_100B189E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B18A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B18AB0()
{
  result = qword_101A115E0;
  if (!qword_101A115E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115E0);
  }

  return result;
}

unint64_t sub_100B18B08()
{
  result = qword_101A115E8;
  if (!qword_101A115E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115E8);
  }

  return result;
}

unint64_t sub_100B18B60()
{
  result = qword_101A115F0;
  if (!qword_101A115F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115F0);
  }

  return result;
}

unint64_t sub_100B18BB8()
{
  result = qword_101A115F8;
  if (!qword_101A115F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A115F8);
  }

  return result;
}

unint64_t sub_100B18C10()
{
  result = qword_101A11600;
  if (!qword_101A11600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11600);
  }

  return result;
}

unint64_t sub_100B18C68()
{
  result = qword_101A11608;
  if (!qword_101A11608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11608);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Geometry.init(position:size:angle:flipHorizontally:widthValid:heightValid:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = a9;
  *(a4 + 40) = result;
  *(a4 + 41) = a2;
  *(a4 + 42) = a3;
  return result;
}

id sub_100B18D0C()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Geometry.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Geometry.version.unsafeMutableAddressor()
{
  if (qword_1019F1CD8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Geometry.version;
}

id static TSContentLanguage.Models.Geometry.version.getter()
{
  if (qword_1019F1CD8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Geometry.version;

  return v1;
}

unint64_t sub_100B18F3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B19814(*a1);
  *a2 = result;
  return result;
}

void sub_100B18F6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697469736F70;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 6)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEB0000000064696CLL;
  v8 = 0x61765F6874646977;
  if (v2 != 4)
  {
    v8 = 0x765F746867696568;
    v7 = 0xEC00000064696C61;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C676E61;
  if (v2 != 2)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000101551B20;
  }

  if (*v1)
  {
    v4 = 1702521203;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100B19080()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x6564695F65707974;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x61765F6874646977;
  if (v1 != 4)
  {
    v4 = 0x765F746867696568;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C676E61;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 1702521203;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100B19190@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B19814(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B191C4(uint64_t a1)
{
  v2 = sub_100B1A78C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B19200(uint64_t a1)
{
  v2 = sub_100B1A78C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Geometry.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100B19860(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 11);
    *(a2 + 27) = *(v7 + 11);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Geometry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A11610);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B1A78C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  sub_100B0D5F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_100B1A7E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1CD8 != -1)
    {
      swift_once();
    }

    *&v12 = static TSContentLanguage.Models.Geometry.version;
    v11 = 7;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Geometry.isEquivalent(to:)(uint64_t a1)
{
  if (sub_1007C87EC(*v1, *a1) && sub_1007C87EC(*(v1 + 8), *(a1 + 8)) && sub_1007C87EC(*(v1 + 16), *(a1 + 16)) && sub_1007C87EC(*(v1 + 24), *(a1 + 24)) && sub_1007C87EC(*(v1 + 32), *(a1 + 32)) && ((*(a1 + 40) ^ *(v1 + 40)) & 1) == 0 && ((*(a1 + 41) ^ *(v1 + 41)) & 1) == 0)
  {
    v3 = *(a1 + 42) ^ *(v1 + 42) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100B19650(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return _s8Freeform17TSContentLanguageO6ModelsO8GeometryV23__derived_struct_equalsySbAG_AGtFZ_0(&v5, &v7) & 1;
}

BOOL sub_100B1969C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *(a1 + 42);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 41);
  v14 = *(v1 + 42);
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    result = sub_1007C87EC(*(v1 + 8), *(a1 + 8));
    if (result)
    {
      result = sub_1007C87EC(v10, v4);
      if (result)
      {
        result = sub_1007C87EC(v9, v3);
        if (result)
        {
          return sub_1007C87EC(v11, v5) & (v6 ^ v12 ^ 1) & (v7 ^ v13 ^ 1) & (v8 ^ v14 ^ 1);
        }
      }
    }
  }

  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO8GeometryV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && ((*(a1 + 41) ^ *(a2 + 41)) & 1) == 0)
  {
    return (*(a1 + 42) ^ *(a2 + 42) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100B19814(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018754F0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B19860@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v66[2] = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66[3] = v66 - v6;
  __chkstk_darwin(v7);
  v66[4] = v66 - v8;
  __chkstk_darwin(v9);
  v67 = v66 - v10;
  v11 = type metadata accessor for CodingUserInfoKey();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v66 - v15;
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v19 = sub_1005B981C(&qword_101A11648);
  v71 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v66 - v20;
  v22 = a1[3];
  v73 = a1;
  sub_100020E58(a1, v22);
  sub_100B1A78C();
  v23 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_100005070(v73);
  }

  v72 = v16;
  v66[1] = v13;
  v24 = v70;
  LOBYTE(v74) = 6;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v26)
  {
    if (v25 == 0xD000000000000028 && v26 == 0x800000010158A040)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v29[1] = 0;
        v29[2] = 0;
        *v29 = 0;
        swift_willThrow();
LABEL_11:
        (*(v71 + 8))(v21, v19);
        return sub_100005070(v73);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v78) = 7;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v74;
  if (v74 != 0.0)
  {
    if (qword_1019F1CD8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Geometry.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *(*&v31 + OBJC_IVAR____TtC8Freeform11TSCLVersion_major))
    {
      sub_1007C8648();
      swift_allocError();
      *v32 = xmmword_101463530;
      *(v32 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v79 = 0;
  sub_1007CEB2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v76)
  {
    v33 = KeyedDecodingContainer.codingPath.getter();
    v34 = *(v33 + 16);
    if (v34)
    {
      v72 = v21;
      v78 = _swiftEmptyArrayStorage;
      sub_100034080(0, v34, 0);
      v35 = v78;
      v70 = v33;
      v36 = v33 + 32;
      do
      {
        sub_10000630C(v36, &v74);
        sub_100020E58(&v74, v77);
        v37 = dispatch thunk of CodingKey.stringValue.getter();
        v39 = v38;
        sub_100005070(&v74);
        v78 = v35;
        v41 = v35[2];
        v40 = v35[3];
        if (v41 >= v40 >> 1)
        {
          sub_100034080((v40 > 1), v41 + 1, 1);
          v35 = v78;
        }

        v35[2] = v41 + 1;
        v42 = &v35[2 * v41];
        v42[4] = v37;
        v42[5] = v39;
        v36 += 40;
        --v34;
      }

      while (v34);
      v54 = v19;

      v21 = v72;
    }

    else
    {
      v54 = v19;

      v35 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v56 = 0x6E6F697469736F70;
    v57 = 0xE800000000000000;
LABEL_36:
    *v55 = v56;
    v55[1] = v57;
    v55[2] = v35;
    swift_willThrow();
    v58 = v71;
    swift_willThrow();
    (*(v58 + 8))(v21, v54);
    return sub_100005070(v73);
  }

  v44 = v74;
  v43 = v75;
  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v79 = 1;
  sub_1007CEF28();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v76)
  {
    v45 = KeyedDecodingContainer.codingPath.getter();
    v46 = *(v45 + 16);
    if (v46)
    {
      v72 = v21;
      v78 = _swiftEmptyArrayStorage;
      sub_100034080(0, v46, 0);
      v35 = v78;
      v70 = v45;
      v47 = v45 + 32;
      do
      {
        sub_10000630C(v47, &v74);
        sub_100020E58(&v74, v77);
        v48 = dispatch thunk of CodingKey.stringValue.getter();
        v50 = v49;
        sub_100005070(&v74);
        v78 = v35;
        v52 = v35[2];
        v51 = v35[3];
        if (v52 >= v51 >> 1)
        {
          sub_100034080((v51 > 1), v52 + 1, 1);
          v35 = v78;
        }

        v35[2] = v52 + 1;
        v53 = &v35[2 * v52];
        v53[4] = v48;
        v53[5] = v50;
        v47 += 40;
        --v46;
      }

      while (v46);
      v54 = v19;

      v21 = v72;
    }

    else
    {
      v54 = v19;

      v35 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    v56 = 1702521203;
    v57 = 0xE400000000000000;
    goto LABEL_36;
  }

  v60 = v74;
  v59 = v75;
  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v78) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  if (v75)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v74;
  }

  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v78) = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v62 = LOBYTE(v74);
  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v78) = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  LODWORD(v67) = v62;

  v63 = (LOBYTE(v74) == 2) | LOBYTE(v74);
  sub_100020E58(v73, v73[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v78) = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v64 = (LOBYTE(v74) == 2) | LOBYTE(v74);
  v65 = v67 & 1;
  (*(v71 + 8))(v21, v19);
  result = sub_100005070(v73);
  *v24 = v44;
  *(v24 + 8) = v43;
  *(v24 + 16) = v60;
  *(v24 + 24) = v59;
  *(v24 + 32) = v61;
  *(v24 + 40) = v65;
  *(v24 + 41) = v63 & 1;
  *(v24 + 42) = v64 & 1;
  return result;
}

unint64_t sub_100B1A78C()
{
  result = qword_101A11618;
  if (!qword_101A11618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11618);
  }

  return result;
}

unint64_t sub_100B1A7E0()
{
  result = qword_101A11620;
  if (!qword_101A11620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11620);
  }

  return result;
}

unint64_t sub_100B1A834(uint64_t a1)
{
  result = sub_100B105E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B1A85C(void *a1)
{
  a1[2] = sub_1007C7E6C();
  a1[3] = sub_1007C869C();
  result = sub_100B1A894();
  a1[4] = result;
  return result;
}

unint64_t sub_100B1A894()
{
  result = qword_101A11628;
  if (!qword_101A11628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11628);
  }

  return result;
}

__n128 sub_100B1A8E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100B1A8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100B1A950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100B1A9C8()
{
  result = qword_101A11630;
  if (!qword_101A11630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11630);
  }

  return result;
}

unint64_t sub_100B1AA20()
{
  result = qword_101A11638;
  if (!qword_101A11638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11638);
  }

  return result;
}

unint64_t sub_100B1AA78()
{
  result = qword_101A11640;
  if (!qword_101A11640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11640);
  }

  return result;
}

id sub_100B1AAF4()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Size.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Size.version.unsafeMutableAddressor()
{
  if (qword_1019F1CE0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Size.version;
}

id static TSContentLanguage.Models.Size.version.getter()
{
  if (qword_1019F1CE0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Size.version;

  return v1;
}

Swift::Int sub_100B1AC20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B1ACE8()
{
  String.hash(into:)();
}

Swift::Int sub_100B1AD9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B1AE60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B1B2EC(*a1);
  *a2 = result;
  return result;
}

void sub_100B1AE90(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6874646977;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746867696568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B1AF14()
{
  v1 = 0x6874646977;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100B1AF94@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B1B2EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B1AFBC(uint64_t a1)
{
  v2 = sub_100B1B998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B1AFF8(uint64_t a1)
{
  v2 = sub_100B1B998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Size.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A11650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100B1B998();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1CE0 != -1)
  {
    swift_once();
  }

  v8[1] = static TSContentLanguage.Models.Size.version;
  v9 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_100B1B2A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100B1B338(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_100B1B2EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018755D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_100B1B338(void *a1)
{
  v4 = sub_1005B981C(&qword_101A11680);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B1B998();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_35;
  }

  LOBYTE(v42) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000024 && v9 == 0x800000010158A0A0)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v45) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v42;
  if (!v42)
  {
LABEL_16:
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.userInfo.getter();

    v46 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v43)
    {
      v15 = KeyedDecodingContainer.codingPath.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v40 = v5;
        v45 = _swiftEmptyArrayStorage;
        sub_100034080(0, v16, 0);
        v17 = v45;
        v39 = v15;
        v18 = v15 + 32;
        do
        {
          sub_10000630C(v18, &v42);
          sub_100020E58(&v42, v44);
          v19 = dispatch thunk of CodingKey.stringValue.getter();
          v41 = v20;
          sub_100005070(&v42);
          v45 = v17;
          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            sub_100034080((v21 > 1), v22 + 1, 1);
            v17 = v45;
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v24 = v41;
          v23[4] = v19;
          v23[5] = v24;
          v18 += 40;
          --v16;
        }

        while (v16);

        v5 = v40;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 0x6874646977;
      v36 = 0xE500000000000000;
    }

    else
    {
      v2 = *&v42;
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Decoder.userInfo.getter();

      v46 = 1;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((v43 & 1) == 0)
      {
        (*(v5 + 8))(v7, v4);
        sub_100005070(a1);
        return v2;
      }

      v25 = KeyedDecodingContainer.codingPath.getter();
      v26 = *(v25 + 16);
      if (v26)
      {
        v40 = v5;
        v45 = _swiftEmptyArrayStorage;
        sub_100034080(0, v26, 0);
        v17 = v45;
        v39 = v25;
        v27 = v25 + 32;
        do
        {
          sub_10000630C(v27, &v42);
          sub_100020E58(&v42, v44);
          v28 = dispatch thunk of CodingKey.stringValue.getter();
          v41 = v29;
          sub_100005070(&v42);
          v45 = v17;
          v31 = v17[2];
          v30 = v17[3];
          if (v31 >= v30 >> 1)
          {
            sub_100034080((v30 > 1), v31 + 1, 1);
            v17 = v45;
          }

          v17[2] = v31 + 1;
          v32 = &v17[2 * v31];
          v33 = v41;
          v32[4] = v28;
          v32[5] = v33;
          v27 += 40;
          --v26;
        }

        while (v26);

        v5 = v40;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 0x746867696568;
      v36 = 0xE600000000000000;
    }

    *v34 = v35;
    v34[1] = v36;
    v34[2] = v17;
    swift_willThrow();
    goto LABEL_33;
  }

  if (qword_1019F1CE0 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.Size.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {

    goto LABEL_16;
  }

  sub_1007C8648();
  swift_allocError();
  *v14 = xmmword_101463530;
  *(v14 + 16) = 0;
  swift_willThrow();

LABEL_34:
  (*(v5 + 8))(v7, v4);
LABEL_35:
  sub_100005070(a1);
  return v2;
}

unint64_t sub_100B1B998()
{
  result = qword_101A11658;
  if (!qword_101A11658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11658);
  }

  return result;
}

unint64_t sub_100B1B9EC(uint64_t a1)
{
  result = sub_100B1053C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B1BA14(void *a1)
{
  a1[2] = sub_1007CEF28();
  a1[3] = sub_100B1A7E0();
  result = sub_100B1BA4C();
  a1[4] = result;
  return result;
}

unint64_t sub_100B1BA4C()
{
  result = qword_101A11660;
  if (!qword_101A11660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11660);
  }

  return result;
}

unint64_t sub_100B1BAC4()
{
  result = qword_101A11668;
  if (!qword_101A11668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11668);
  }

  return result;
}

unint64_t sub_100B1BB1C()
{
  result = qword_101A11670;
  if (!qword_101A11670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11670);
  }

  return result;
}

unint64_t sub_100B1BB74()
{
  result = qword_101A11678;
  if (!qword_101A11678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11678);
  }

  return result;
}

uint64_t sub_100B1BBC8(uint64_t a1)
{
  sub_100810AD0(a1, v14);
  v2 = v15;
  v10 = v14[1];
  v11 = v14[0];
  sub_100810AD0(v1, v12);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12[0], v11), vceqq_f64(v12[1], v10)))) & 1) == 0)
  {
    return 0;
  }

  if (v13)
  {
    v4 = 1650946675;
  }

  else
  {
    v4 = 13168;
  }

  if (v13)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (v2)
  {
    v6 = 1650946675;
  }

  else
  {
    v6 = 13168;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100B1BCC0(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  if (v1[4])
  {
    if ((a1[4] & 1) == 0)
    {
      return 0;
    }

    v10 = a1[1];
    if (v4)
    {
      if (!v10 || (v3 != v7 || v4 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v5 == v8 && v6 == v9)
    {
      return 1;
    }
  }

  else
  {
    if (a1[4])
    {
      return 0;
    }

    v11 = v3 == v7 && v4 == a1[1];
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v5 == v8 && v6 == v9)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t sub_100B1BDA8(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 48) & 1) == 0)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      return v2.f64[0] == *a1;
    }

    return 0;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    return 0;
  }

  v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v2, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))))) & (*(v1 + 32) == *(a1 + 32));
  if (*(v1 + 40) == *(a1 + 40))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100B1BE18(double *a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 48);
  if (v1[4] >> 8 != 0xFFFFFFFF || v3 > 0xF)
  {
    v5 = *(v1 + 1);
    v6 = v1[3];
    v7 = *a1;
    v8 = a1[1];
    v9 = *(a1 + 2);
    v10 = *(a1 + 3);
    v11 = *(a1 + 4);
    v12 = *(a1 + 5);
    v13 = *(a1 + 48);
    if (v11 >> 8 == 0xFFFFFFFF && v13 <= 0xF)
    {
      return 0;
    }

    if (v3 >> 6)
    {
      if (v3 >> 6 == 1)
      {
        v24 = *v1;
        v25 = v5;
        v26 = v6;
        v27 = v2;
        v28 = v3 & 0x3F;
        if ((v13 & 0xC0) == 0x40)
        {
          *v22 = v7;
          *&v22[1] = v8;
          v22[2] = v9;
          v22[3] = v10;
          v22[4] = v11;
          v22[5] = v12;
          v23 = v13 & 0x3F;
          if (_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v24, v22))
          {
            return 1;
          }
        }
      }

      else if ((v13 & 0xC0) == 0x80 && !(*&v8 | *&v7 | v9 | v10 | v11 | v12) && v13 == 128)
      {
        return 1;
      }
    }

    else if (v13 < 0x40)
    {
      v21 = *(v1 + 1);
      v16 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*v1);
      v18 = v17;
      if (v16 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(SLOBYTE(v7)) && v18 == v19)
      {

        if (*&v21 == v8)
        {
          return 1;
        }
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) != 0 && *&v21 == v8)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return *(a1 + 4) >> 8 == 0xFFFFFFFFLL && *(a1 + 48) < 0x10u;
}

BOOL sub_100B1BFE0(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (!a3)
    {
      return *&a5 == *&a2 && *&a4 == *&a1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    if (a4 <= 1)
    {
      if (!(a4 | a5))
      {
        return a3 == 2 && !(a2 | a1);
      }

      if (a3 != 2 || a1 != 1)
      {
        return 0;
      }
    }

    else if (a4 ^ 2 | a5)
    {
      if (a4 ^ 3 | a5)
      {
        if (a3 != 2 || a1 != 4)
        {
          return 0;
        }
      }

      else if (a3 != 2 || a1 != 3)
      {
        return 0;
      }
    }

    else if (a3 != 2 || a1 != 2)
    {
      return 0;
    }

    return *&a2 == 0.0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  return *&a5 == *&a2 && *&a4 == *&a1;
}

uint64_t sub_100B1C0E4(char a1, char a2)
{
  LOBYTE(v2) = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7069726373627573;
    }

    else
    {
      v3 = 0x7263737265707573;
    }

    if (a2 == 1)
    {
      v4 = 0xE900000000000074;
    }

    else
    {
      v4 = 0xEB00000000747069;
    }

    v2 = v2;
    if (v2)
    {
LABEL_9:
      if (v2 == 1)
      {
        v5 = 0x7069726373627573;
      }

      else
      {
        v5 = 0x7263737265707573;
      }

      if (v2 == 1)
      {
        v6 = 0xE900000000000074;
      }

      else
      {
        v6 = 0xEB00000000747069;
      }

      if (v3 != v5)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x746C7561666564;
    v2 = v2;
    if (v2)
    {
      goto LABEL_9;
    }
  }

  v6 = 0xE700000000000000;
  if (v3 != 0x746C7561666564)
  {
LABEL_21:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v6)
  {
    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7 & 1;
}

uint64_t sub_100B1C20C(char a1, char a2)
{
  LOBYTE(v2) = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6465726975716572;
    }

    else
    {
      v3 = 0x647261646E617473;
    }

    v4 = 0xE800000000000000;
    v2 = v2;
    if (v2)
    {
LABEL_6:
      if (v2 == 1)
      {
        v5 = 0x6465726975716572;
      }

      else
      {
        v5 = 0x647261646E617473;
      }

      v6 = 0xE800000000000000;
      if (v3 != v5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7105633;
    v2 = v2;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v6 = 0xE300000000000000;
  if (v3 != 7105633)
  {
LABEL_15:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_16;
  }

LABEL_13:
  if (v4 != v6)
  {
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:

  return v7 & 1;
}

uint64_t sub_100B1C318(char a1, char a2)
{
  LOBYTE(v2) = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1701736302;
    }

    else
    {
      v3 = 0x656C676E6973;
    }

    if (a2 == 1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    v2 = v2;
    if (v2)
    {
LABEL_9:
      if (v2 == 1)
      {
        v5 = 1701736302;
      }

      else
      {
        v5 = 0x656C676E6973;
      }

      if (v2 == 1)
      {
        v6 = 0xE400000000000000;
      }

      else
      {
        v6 = 0xE600000000000000;
      }

      if (v3 != v5)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x656C62756F64;
    v2 = v2;
    if (v2)
    {
      goto LABEL_9;
    }
  }

  v6 = 0xE600000000000000;
  if (v3 != 0x656C62756F64)
  {
LABEL_21:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v6)
  {
    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7 & 1;
}

uint64_t sub_100B1C40C(char a1, char a2)
{
  LOBYTE(v2) = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x676E6964616568;
    }

    else
    {
      v3 = 0x6669636570736E75;
    }

    if (a2 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEB00000000646569;
    }

    v2 = v2;
    if (v2)
    {
LABEL_9:
      if (v2 == 1)
      {
        v5 = 0x676E6964616568;
      }

      else
      {
        v5 = 0x6669636570736E75;
      }

      if (v2 == 1)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xEB00000000646569;
      }

      if (v3 != v5)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 2036625250;
    v2 = v2;
    if (v2)
    {
      goto LABEL_9;
    }
  }

  v6 = 0xE400000000000000;
  if (v3 != 2036625250)
  {
LABEL_21:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v6)
  {
    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7 & 1;
}

uint64_t sub_100B1C528(char a1, char a2)
{
  LOBYTE(v2) = a1;
  v3 = 0xED00007468676972;
  v4 = 0x5F6F745F7466656CLL;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x6C61727574616ELL;
    }

    else
    {
      v5 = 0x6F745F7468676972;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00007466656C5FLL;
    }

    v2 = v2;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v5 = 0x5F6F745F7466656CLL;
  v6 = 0xED00007468676972;
  v2 = v2;
  if (v2)
  {
LABEL_9:
    if (v2 == 1)
    {
      v4 = 0x6C61727574616ELL;
    }

    else
    {
      v4 = 0x6F745F7468676972;
    }

    if (v2 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xED00007466656C5FLL;
    }
  }

LABEL_15:
  if (v5 == v4 && v6 == v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100B1C654(char a1, char a2)
{
  LOBYTE(v2) = a1;
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 7368564;
    }

    if (a2 == 1)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }

    v2 = v2;
    if (v2)
    {
LABEL_9:
      if (v2 == 1)
      {
        v5 = 0x7265746E6563;
      }

      else
      {
        v5 = 7368564;
      }

      if (v2 == 1)
      {
        v6 = 0xE600000000000000;
      }

      else
      {
        v6 = 0xE300000000000000;
      }

      if (v3 != v5)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x6D6F74746F62;
    v2 = v2;
    if (v2)
    {
      goto LABEL_9;
    }
  }

  v6 = 0xE600000000000000;
  if (v3 != 0x6D6F74746F62)
  {
LABEL_21:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v6)
  {
    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7 & 1;
}

uint64_t sub_100B1C748(char a1, char a2)
{
  if (a2)
  {
    v3 = 1650946675;
  }

  else
  {
    v3 = 13168;
  }

  if (a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a1)
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100B1C7DC(double *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 48);
  if (!(v3 >> 6))
  {
    if (*(a1 + 48) >= 0x40u)
    {
      goto LABEL_46;
    }

    v8 = *a1;
    v9 = a1[1];
    v10 = 0x65757169746E61;
    v11 = 0xE700000000000000;
    v12 = 0x65757169746E61;
    switch(*v1)
    {
      case 1u:
        v12 = 0x6C5F6E6F79617263;
        v11 = 0xEB00000000656E69;
        break;
      case 2u:
        v12 = 0x695F6C616D726F66;
        v11 = 0xEC0000007465736ELL;
        break;
      case 3u:
        v12 = 0x735F6C616D726F66;
        v11 = 0xED0000776F646168;
        break;
      case 4u:
        v12 = 0x61705F6870617267;
        v11 = 0xEB00000000726570;
        break;
      case 5u:
        v12 = 0x656E696C64616568;
        v11 = 0xE900000000000073;
        break;
      case 6u:
        v12 = 0x7465735F74656ALL;
        break;
      case 7u:
        v12 = 0xD000000000000010;
        v11 = 0x8000000101552230;
        break;
      case 8u:
        v12 = 0x696C6F6674726F70;
        v11 = 0xEF7465736E695F6FLL;
        break;
      case 9u:
        v12 = 0x6E697068737570;
        break;
      case 0xAu:
        v12 = 0x61737369616E6572;
        v11 = 0xEC0000003165636ELL;
        break;
      case 0xBu:
        v12 = 0x6F6F627061726373;
        v11 = 0xEB0000000062326BLL;
        break;
      case 0xCu:
        v12 = 0x616F6279726F7473;
        v11 = 0xEA00000000006472;
        break;
      case 0xDu:
        v12 = 0x5F656761746E6976;
        v11 = 0xED00007465736E69;
        break;
      default:
        break;
    }

    v17 = 0xE700000000000000;
    switch(LOBYTE(v8))
    {
      case 1:
        v10 = 0x6C5F6E6F79617263;
        v17 = 0xEB00000000656E69;
        break;
      case 2:
        v10 = 0x695F6C616D726F66;
        v17 = 0xEC0000007465736ELL;
        break;
      case 3:
        v10 = 0x735F6C616D726F66;
        v17 = 0xED0000776F646168;
        break;
      case 4:
        v10 = 0x61705F6870617267;
        v17 = 0xEB00000000726570;
        break;
      case 5:
        v10 = 0x656E696C64616568;
        v17 = 0xE900000000000073;
        break;
      case 6:
        v10 = 0x7465735F74656ALL;
        break;
      case 7:
        v10 = 0xD000000000000010;
        v17 = 0x8000000101552230;
        break;
      case 8:
        v10 = 0x696C6F6674726F70;
        v17 = 0xEF7465736E695F6FLL;
        break;
      case 9:
        v10 = 0x6E697068737570;
        break;
      case 0xA:
        v10 = 0x61737369616E6572;
        v17 = 0xEC0000003165636ELL;
        break;
      case 0xB:
        v10 = 0x6F6F627061726373;
        v17 = 0xEB0000000062326BLL;
        break;
      case 0xC:
        v10 = 0x616F6279726F7473;
        v17 = 0xEA00000000006472;
        break;
      case 0xD:
        v10 = 0x5F656761746E6976;
        v17 = 0xED00007465736E69;
        break;
      default:
        break;
    }

    if (v12 == v10 && v11 == v17)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (v9 != v2)
    {
      goto LABEL_46;
    }

LABEL_45:
    v7 = 1;
    return v7 & 1;
  }

  if (v3 >> 6 != 1)
  {
    v13 = *(a1 + 48);
    if ((v13 & 0xC0) != 0x80)
    {
      goto LABEL_46;
    }

    v14 = vorrq_s8(*(a1 + 2), *(a1 + 4));
    v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *(a1 + 1) | *a1;
    if (v13 != 128 || v15 != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v22[0] = *v1;
  *&v22[1] = v2;
  v4 = *(v1 + 32);
  v23 = *(v1 + 16);
  v24 = v4;
  v25 = v3 & 0x3F;
  v5 = *(a1 + 48);
  if ((v5 & 0xC0) != 0x40)
  {
LABEL_46:
    v7 = 0;
    return v7 & 1;
  }

  v6 = *(a1 + 1);
  v20[0] = *a1;
  v20[1] = v6;
  v20[2] = *(a1 + 2);
  v21 = v5 & 0x3F;
  v7 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v22, v20);
  return v7 & 1;
}

__n128 TSContentLanguage.Models.Image.Mask.init(geometry:path:)@<Q0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 20);
  v10 = *(a1 + 42);
  v11 = *a2;
  *&v16[21] = a2[1];
  *&v16[5] = v11;
  *&v16[37] = a2[2];
  v16[53] = *(a2 + 48);
  *&v17 = v4;
  *(&v17 + 1) = v5;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  *v19 = v8;
  v19[10] = v10;
  *&v19[8] = v9;
  *&v19[11] = *v16;
  *&v19[27] = *&v16[16];
  *&v19[43] = *&v16[32];
  *&v19[57] = *&v16[46];
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v6;
  v20[3] = v7;
  v20[4] = v8;
  v22 = v10;
  v21 = v9;
  *&v25[14] = *&v16[46];
  *v25 = *&v16[32];
  v24 = *&v16[16];
  v23 = *v16;
  sub_100819AF4(&v17, &v15);
  sub_100819B50(v20);
  v12 = *&v19[48];
  *(a3 + 64) = *&v19[32];
  *(a3 + 80) = v12;
  *(a3 + 96) = v19[64];
  v13 = v18;
  *a3 = v17;
  *(a3 + 16) = v13;
  result = *&v19[16];
  *(a3 + 32) = *v19;
  *(a3 + 48) = result;
  return result;
}

void *TSContentLanguage.Models.Image.init(identifier:geometry:aspectRatioLocked:description:resource:mask:instantAlphaPath:stroke:shadow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12)
{
  *(&__src[9] + 8) = 0u;
  *(&__src[8] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  *(&__src[10] + 1) = 0;
  *&__src[11] = 1;
  *(&__src[11] + 8) = 0u;
  *(&__src[12] + 8) = 0u;
  BYTE8(__src[13]) = 0;
  memset(&__src[20], 0, 48);
  __src[23] = 0xFFFFFFFF00uLL;
  __src[24] = 0uLL;
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  v13 = *a3;
  v14 = a3[1];
  *(&__src[2] + 11) = *(a3 + 27);
  __src[1] = v13;
  __src[2] = v14;
  BYTE11(__src[3]) = a4;
  *&__src[4] = a5;
  *(&__src[4] + 1) = a6;
  v15 = *(a7 + 16);
  __src[5] = *a7;
  __src[6] = v15;
  LOBYTE(__src[7]) = *(a7 + 32);
  sub_10002C638(a8, &__src[7] + 8, &qword_101A00978);
  v16 = *(a10 + 16);
  __src[14] = *a10;
  __src[15] = v16;
  LOBYTE(__src[16]) = *(a10 + 32);
  v17 = *(a11 + 16);
  *(&__src[16] + 8) = *a11;
  *(&__src[17] + 8) = v17;
  *(&__src[18] + 8) = *(a11 + 32);
  BYTE8(__src[19]) = *(a11 + 48);
  v18 = *a12;
  v19 = a12[1];
  v20 = a12[4];
  __src[23] = a12[3];
  __src[24] = v20;
  v21 = a12[2];
  __src[21] = v19;
  __src[22] = v21;
  __src[20] = v18;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v26, __src, sizeof(v26));
  sub_100819A44(__dst, &v23);
  sub_100819AA0(v26);
  return memcpy(a9, __dst, 0x190uLL);
}

uint64_t *TSContentLanguage.Models.Image.version.unsafeMutableAddressor()
{
  if (qword_1019F1CE8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Image.version;
}

__n128 TSContentLanguage.Models.Image.stroke.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 280);
  *a1 = *(v1 + 264);
  *(a1 + 16) = v3;
  result = *(v1 + 296);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Image.stroke.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 264) = *a1;
  *(v1 + 280) = v2;
  result = *(a1 + 32);
  *(v1 + 296) = result;
  *(v1 + 312) = *(a1 + 48);
  return result;
}

double static TSContentLanguage.Models.Image.strokeDefault.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0x80;
  return result;
}

__n128 TSContentLanguage.Models.Image.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 368);
  *(a1 + 32) = *(v1 + 352);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 384);
  result = *(v1 + 336);
  *a1 = *(v1 + 320);
  *(a1 + 16) = result;
  return result;
}

__n128 TSContentLanguage.Models.Image.shadow.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 352) = *(a1 + 32);
  *(v1 + 368) = v2;
  *(v1 + 384) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 320) = *a1;
  *(v1 + 336) = result;
  return result;
}

uint64_t TSContentLanguage.Models.Image.canvasObject.getter@<X0>(void *a1@<X8>)
{
  memcpy(a1, v1, 0x190uLL);
  type metadata accessor for TSContentLanguage.Models.CanvasObject();
  swift_storeEnumTagMultiPayload();
  return sub_100819A44(v1, v3);
}

unint64_t sub_100B1D1B8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0xD000000000000013;
    v8 = 0x7470697263736564;
    if (a1 != 3)
    {
      v8 = 0x656372756F736572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x797274656D6F6567;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x776F64616873;
    v2 = 0x6564695F65707974;
    if (a1 != 9)
    {
      v2 = 0x6E6F6973726576;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 1802723693;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0x656B6F727473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100B1D328(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100B1D1B8(*a1);
  v5 = v4;
  if (v3 == sub_100B1D1B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100B1D3B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B1D1B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B1D414()
{
  sub_100B1D1B8(*v0);
  String.hash(into:)();
}

Swift::Int sub_100B1D468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B1D1B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B1D4C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B1FF34(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100B1D4F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100B1D1B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100B1D540@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B1FF34(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B1D574(uint64_t a1)
{
  v2 = sub_100B21494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B1D5B0(uint64_t a1)
{
  v2 = sub_100B21494();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.Image.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100B1FF80(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x190uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Image.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A11688);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B21494();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v29) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v29 = *(v3 + 16);
    v30[0] = v9;
    *(v30 + 11) = *(v3 + 43);
    LOBYTE(v27[0]) = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v29) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v29) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 96);
    v29 = *(v3 + 80);
    v30[0] = v10;
    LOBYTE(v30[1]) = *(v3 + 112);
    LOBYTE(v27[0]) = 4;
    sub_100B214E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 168);
    v12 = *(v3 + 200);
    v35[4] = *(v3 + 184);
    v35[5] = v12;
    v36 = *(v3 + 216);
    v13 = *(v3 + 136);
    v35[0] = *(v3 + 120);
    v35[1] = v13;
    v35[2] = *(v3 + 152);
    v35[3] = v11;
    v14 = *(v3 + 168);
    v15 = *(v3 + 200);
    v32 = *(v3 + 184);
    v33 = v15;
    v34 = *(v3 + 216);
    v16 = *(v3 + 136);
    v29 = *(v3 + 120);
    v30[0] = v16;
    v30[1] = *(v3 + 152);
    v31 = v14;
    v38 = 5;
    sub_10000BE14(v35, v27, &qword_101A00978);
    sub_100B2153C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[4] = v32;
    v27[5] = v33;
    v28 = v34;
    v27[0] = v29;
    v27[1] = v30[0];
    v27[2] = v30[1];
    v27[3] = v31;
    sub_10000CAAC(v27, &qword_101A00978);
    v17 = *(v3 + 240);
    v22 = *(v3 + 224);
    v23 = v17;
    LOBYTE(v24) = *(v3 + 256);
    v37 = 6;
    sub_100B21590();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v3 + 280);
    v22 = *(v3 + 264);
    v23 = v18;
    v24 = *(v3 + 296);
    LOBYTE(v25) = *(v3 + 312);
    v37 = 7;
    sub_10096930C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + 368);
    v24 = *(v3 + 352);
    v25 = v19;
    v26 = *(v3 + 384);
    v20 = *(v3 + 336);
    v22 = *(v3 + 320);
    v23 = v20;
    v37 = 8;
    sub_100B215E4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1CE8 != -1)
    {
      swift_once();
    }

    *&v22 = static TSContentLanguage.Models.Image.version;
    v37 = 10;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Image.isEquivalent(to:)(uint64_t a1)
{
  v2 = *(v1 + 56) | (*(v1 + 58) << 16);
  v3 = *(a1 + 56) | (*(a1 + 58) << 16);
  v4 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

LABEL_3:
    v5 = *(v1 + 59);
    v6 = *(a1 + 59);
    if (v5 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 2 || ((v5 ^ v6) & 1) != 0)
    {
      return 0;
    }

    v18 = *(v1 + 72);
    v19 = *(a1 + 72);
    if (v18)
    {
      if (!v19)
      {
        return 0;
      }

      if (*(v1 + 64) != *(a1 + 64) || v18 != v19)
      {
        v20 = a1;
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a1 = v20;
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    v22 = *(v1 + 88);
    v23 = *(v1 + 96);
    v24 = *(v1 + 104);
    v25 = *(a1 + 88);
    v26 = *(a1 + 96);
    v27 = *(a1 + 104);
    if (*(v1 + 112))
    {
      if ((*(a1 + 112) & 1) == 0)
      {
        return 0;
      }

      if (!v22)
      {
        if (v25)
        {
          return 0;
        }

        goto LABEL_36;
      }

      if (!v25)
      {
        return 0;
      }
    }

    else if (*(a1 + 112))
    {
      return 0;
    }

    if (*(v1 + 80) != *(a1 + 80) || v22 != v25)
    {
      v28 = a1;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_36:
    if (v23 != v26 || v24 != v27)
    {
      v30 = a1;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    v32 = *(v1 + 168);
    v33 = *(v1 + 200);
    v80 = *(v1 + 184);
    v81 = v33;
    v82 = *(v1 + 216);
    v34 = *(v1 + 136);
    v76 = *(v1 + 120);
    v77 = v34;
    v35 = v1;
    v78 = *(v1 + 152);
    v79 = v32;
    v36 = *(a1 + 136);
    v37 = *(a1 + 152);
    v74[0] = *(a1 + 120);
    v74[1] = v36;
    v38 = *(a1 + 168);
    v39 = *(a1 + 184);
    v40 = *(a1 + 200);
    v41 = a1;
    v75 = *(a1 + 216);
    v74[4] = v39;
    v74[5] = v40;
    v74[2] = v37;
    v74[3] = v38;
    if ((sub_1007C60F0(v74) & 1) == 0)
    {
      return 0;
    }

    v42 = *(v1 + 240);
    v71 = *(v1 + 224);
    v72 = v42;
    v73 = *(v1 + 256);
    v43 = *(v41 + 240);
    v69[0] = *(v41 + 224);
    v69[1] = v43;
    v70 = *(v41 + 256);
    if ((sub_1007C63F0(v69) & 1) == 0)
    {
      return 0;
    }

    v44 = *(v1 + 272);
    v45 = *(v1 + 312);
    v46 = *(v41 + 264);
    v47 = *(v41 + 272);
    v48 = *(v41 + 312);
    if (v45 >> 6)
    {
      v49 = v41;
      v50 = *(v41 + 280);
      v51 = *(v41 + 288);
      v52 = *(v41 + 296);
      v53 = *(v41 + 304);
      if (v45 >> 6 == 1)
      {
        v91[0] = *(v1 + 264);
        *&v91[1] = v44;
        v54 = *(v1 + 296);
        v92 = *(v1 + 280);
        v93 = v54;
        v94 = v45 & 0x3F;
        if ((v48 & 0xC0) != 0x40)
        {
          return 0;
        }

        v95[0] = v46;
        *&v95[1] = v47;
        v95[2] = v50;
        v95[3] = v51;
        v95[4] = v52;
        v95[5] = v53;
        v96 = v48 & 0x3F;
        v55 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v91, v95);
        v49 = v41;
        if ((v55 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_56;
      }

      if ((v48 & 0xC0) == 0x80)
      {
        v17 = 0;
        if (*&v47 | v46 | v50 | v51 | v52 | v53 || v48 != 128)
        {
          return v17;
        }

        goto LABEL_56;
      }
    }

    else if (v48 < 0x40)
    {
      v56 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(v1 + 264));
      v58 = v57;
      if (v56 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v46) && v58 == v59)
      {
      }

      else
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          return 0;
        }
      }

      v49 = v41;
      if (v44 == v47)
      {
LABEL_56:
        v61 = *(v35 + 368);
        v62 = *(v49 + 368);
        v17 = (v61 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00;
        if ((v62 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00)
        {
          v17 = 0;
        }

        if ((v61 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00 && (v62 & 0xFFFFFFFFFFFFFF00) != 0xFFFFFFFF00)
        {
          v63 = (v49 + 376);
          v64 = *(v35 + 336);
          v83[0] = *(v35 + 320);
          v83[1] = v64;
          v83[2] = *(v35 + 352);
          v65 = *(v35 + 392);
          v85 = *(v35 + 376);
          v86 = v65;
          v84 = v61;
          v66 = *(v49 + 352);
          v87[1] = *(v49 + 336);
          v87[2] = v66;
          v87[0] = *(v49 + 320);
          v67 = *(v49 + 392);
          v89 = *v63;
          v90 = v67;
          v88 = v62;
          return _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v83, v87);
        }

        return v17;
      }
    }

    return 0;
  }

  if (v4 == 2)
  {
    return 0;
  }

  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(a1 + 24);
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = a1;
  v15 = *(a1 + 48);
  if (!sub_1007C87EC(*(v1 + 16), *(a1 + 16)) || !sub_1007C87EC(v7, v11) || !sub_1007C87EC(v9, v13) || !sub_1007C87EC(v8, v12))
  {
    return 0;
  }

  v16 = sub_1007C87EC(v10, v15);
  v17 = 0;
  if (v16 && ((v3 ^ v2) & 1) == 0 && ((v3 & 0x100) == 0) != (v2 & 0x100) >> 8)
  {
    a1 = v14;
    if (((v3 & 0x10000) == 0) != (v2 & 0x10000u) >> 16)
    {
      goto LABEL_3;
    }
  }

  return v17;
}

uint64_t sub_100B1E040(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO5ImageV23__derived_struct_equalsySbAG_AGtFZ_0(v4, __dst) & 1;
}

uint64_t *TSContentLanguage.Models.Image.Mask.version.unsafeMutableAddressor()
{
  if (qword_1019F1CF0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Image.Mask.version;
}

__n128 TSContentLanguage.Models.Image.Mask.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 42);
  result = *v1;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 42) = v4;
  *(a1 + 40) = v3;
  return result;
}

__n128 TSContentLanguage.Models.Image.Mask.geometry.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 27);
  *(v1 + 27) = result;
  return result;
}

Swift::Int sub_100B1E1E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B1E2AC()
{
  String.hash(into:)();
}

Swift::Int sub_100B1E360()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B1E424@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B21638(*a1);
  *a2 = result;
  return result;
}

void sub_100B1E454(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x797274656D6F6567;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1752457584;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B1E4D8()
{
  v1 = 0x797274656D6F6567;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1752457584;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100B1E558@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B21638(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B1E580(uint64_t a1)
{
  v2 = sub_100B21E50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B1E5BC(uint64_t a1)
{
  v2 = sub_100B21E50();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.Image.Mask.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B21684(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Image.Mask.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A116B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7 - 16];
  sub_100020E58(a1, a1[3]);
  sub_100B21E50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  *v13 = v9;
  *&v13[11] = *(v3 + 27);
  v15 = 0;
  sub_1007C869C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[4];
    v12 = v3[3];
    *v13 = v10;
    *&v13[16] = v3[5];
    v14 = *(v3 + 96);
    v15 = 1;
    sub_1007C86F0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1CF0 != -1)
    {
      swift_once();
    }

    *&v12 = static TSContentLanguage.Models.Image.Mask.version;
    v15 = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Image.Mask.isEquivalent(to:)(uint64_t a1)
{
  v2 = *(v1 + 40) | (*(v1 + 42) << 16);
  v3 = *(a1 + 40) | (*(a1 + 42) << 16);
  v4 = *(a1 + 40);
  if (*(v1 + 40) == 2)
  {
    if (v4 == 2)
    {
LABEL_3:
      v5 = *(v1 + 64);
      v21 = *(v1 + 48);
      v22 = v5;
      v23 = *(v1 + 80);
      v24 = *(v1 + 96);
      v6 = *(a1 + 64);
      v19[0] = *(a1 + 48);
      v19[1] = v6;
      v19[2] = *(a1 + 80);
      v20 = *(a1 + 96);
      v7 = sub_1007C54E0(v19);
      return v7 & 1;
    }

LABEL_14:
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 2)
  {
    goto LABEL_14;
  }

  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = a1;
  v16 = *(a1 + 32);
  if (!sub_1007C87EC(*v1, *a1) || !sub_1007C87EC(v8, v12) || !sub_1007C87EC(v10, v14) || !sub_1007C87EC(v9, v13))
  {
    goto LABEL_14;
  }

  v17 = sub_1007C87EC(v11, v16);
  v7 = 0;
  if (v17 && ((v3 ^ v2) & 1) == 0 && ((v3 & 0x100) == 0) != (v2 & 0x100) >> 8)
  {
    a1 = v15;
    if (((v3 & 0x10000) == 0) != (v2 & 0x10000u) >> 16)
    {
      goto LABEL_3;
    }
  }

  return v7 & 1;
}

BOOL sub_100B1EA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s8Freeform17TSContentLanguageO6ModelsO5ImageV4MaskV23__derived_struct_equalsySbAI_AItFZ_0(v11, v13);
}

uint64_t *TSContentLanguage.Models.Image.InstantAlphaPath.version.unsafeMutableAddressor()
{
  if (qword_1019F1CF8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Image.InstantAlphaPath.version;
}

uint64_t TSContentLanguage.Models.Image.InstantAlphaPath.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.Image.InstantAlphaPath.init(path:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

Swift::Int sub_100B1EBDC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B1EC9C()
{
  String.hash(into:)();
}

Swift::Int sub_100B1ED48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B1EE04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B21EA4(*a1);
  *a2 = result;
  return result;
}

void sub_100B1EE34(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1752457584;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1702521203;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B1EEB0()
{
  v1 = 1752457584;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100B1EF28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B21EA4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B1EF50(uint64_t a1)
{
  v2 = sub_100B22310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B1EF8C(uint64_t a1)
{
  v2 = sub_100B22310();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Image.InstantAlphaPath.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B21EF0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Image.InstantAlphaPath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A116C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B22310();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_100B1A7E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1CF8 != -1)
    {
      swift_once();
    }

    *&v12 = static TSContentLanguage.Models.Image.InstantAlphaPath.version;
    v11 = 3;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Image.InstantAlphaPath.isEquivalent(to:)(uint64_t a1)
{
  v3 = *v1 == *a1 && *(v1 + 8) == *(a1 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    return (*(a1 + 32) & 1) != 0;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  v5 = *(v1 + 24);
  v6 = *(a1 + 24);
  result = sub_1007C87EC(*(v1 + 16), *(a1 + 16));
  if (result)
  {
    return sub_1007C87EC(v5, v6);
  }

  return result;
}

uint64_t sub_100B1F334(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8Freeform17TSContentLanguageO6ModelsO5ImageV16InstantAlphaPathV23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO5ImageV4MaskV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) | (*(a1 + 42) << 16);
  v5 = *(a2 + 40) | (*(a2 + 42) << 16);
  v6 = *(a2 + 40);
  if (*(a1 + 40) == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v6 == 2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0 || *(a1 + 32) != *(a2 + 32) || ((v5 ^ v4) & 1) != 0 || ((((*(a2 + 40) & 0x100) == 0) ^ ((*(a1 + 40) & 0x100) >> 8)) & 1) == 0 || ((v5 & 0x10000) == 0) == (v4 & 0x10000u) >> 16)
  {
    return 0;
  }

LABEL_11:
  v33 = v2;
  v34 = v3;
  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (!v8)
  {
    if (!v9)
    {
      sub_100819AF4(a2, v22);
      return 1;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
LABEL_16:
    sub_100819AF4(a2, v22);
    sub_100819AF4(a1, v22);

    return 0;
  }

  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  v14 = *(a2 + 64);
  v15 = *(a2 + 80);
  v16 = *(a2 + 96);
  v28 = *(a2 + 48);
  v29 = v9;
  v30 = v14;
  v31 = v15;
  v32 = v16 & 1;
  v23 = v10;
  v24 = v8;
  v25 = v11;
  v26 = v12;
  v27 = v13 & 1;
  sub_100819AF4(a2, v22);
  sub_100819AF4(a1, v22);
  v19 = _s8Freeform17TSContentLanguageO6ModelsO4PathO2eeoiySbAG_AGtFZ_0();
  sub_100819B50(a2);
  sub_100819B50(a1);
  return (v19 & 1) != 0;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ImageV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 56) | (*(a1 + 58) << 16);
  v10 = *(a2 + 56) | (*(a2 + 58) << 16);
  v11 = *(a2 + 56);
  if (*(a1 + 56) == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 2)
    {
      return 0;
    }

    v12 = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0 || *(a1 + 48) != *(a2 + 48) || ((v10 ^ v9) & 1) != 0 || ((((*(a2 + 56) & 0x100) == 0) ^ ((*(a1 + 56) & 0x100) >> 8)) & 1) == 0 || ((v10 & 0x10000) == 0) == (v9 & 0x10000u) >> 16)
    {
      return v12;
    }
  }

  v13 = *(a1 + 59);
  v14 = *(a2 + 59);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v12;
    }
  }

  v15 = *(a1 + 72);
  v16 = *(a2 + 72);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  v24 = *(a2 + 88);
  v25 = *(a2 + 96);
  v26 = *(a2 + 104);
  if ((*(a1 + 112) & 1) == 0)
  {
    if (*(a2 + 112))
    {
      return 0;
    }

    goto LABEL_37;
  }

  if ((*(a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (v21)
  {
    if (!v24)
    {
      return 0;
    }

LABEL_37:
    if (*(a1 + 80) != *(a2 + 80) || v21 != v24)
    {
      v27 = a1;
      v28 = a2;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v28;
      v30 = v29;
      a1 = v27;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_42;
  }

  if (v24)
  {
    return 0;
  }

LABEL_42:
  if (v22 != v25 || v23 != v26)
  {
    v31 = a1;
    v32 = a2;
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v32;
    v34 = v33;
    a1 = v31;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = *(a1 + 168);
  v36 = *(a1 + 200);
  v151 = *(a1 + 184);
  v152 = v36;
  v153 = *(a1 + 216);
  v37 = *(a1 + 136);
  v149[0] = *(a1 + 120);
  v149[1] = v37;
  v149[2] = *(a1 + 152);
  v150 = v35;
  v38 = *(a2 + 136);
  v39 = *(a2 + 152);
  v147[0] = *(a2 + 120);
  v147[1] = v38;
  v40 = *(a2 + 168);
  v41 = *(a2 + 184);
  v42 = *(a2 + 200);
  v148 = *(a2 + 216);
  v147[4] = v41;
  v147[5] = v42;
  v147[2] = v39;
  v147[3] = v40;
  v43 = *(&v150 + 1);
  *&v146[7] = *(a2 + 120);
  *&v146[23] = *(a2 + 136);
  *&v146[39] = *(a2 + 152);
  *&v146[55] = *(a2 + 168);
  if (*(&v150 + 1) != 1)
  {
    if (*(&v40 + 1) != 1)
    {
      v51 = *(a2 + 168);
      v52 = *(a2 + 136);
      v117 = *(a2 + 120);
      v118 = v52;
      v119 = *(a2 + 152);
      *&v120 = v51;
      *(&v120 + 1) = *(&v40 + 1);
      v53 = *(a2 + 200);
      v121 = *(a2 + 184);
      v122 = v53;
      v44 = a2;
      v123 = *(a2 + 216);
      v132 = v117;
      v133 = v52;
      v138 = v123;
      v136 = v121;
      v137 = v53;
      v134 = v119;
      v135 = v120;
      v54 = *(a1 + 120);
      v55 = *(a1 + 152);
      v56 = *(a1 + 168);
      v158[1] = *(a1 + 136);
      v158[2] = v55;
      v158[0] = v54;
      v57 = *(a1 + 184);
      v58 = *(a1 + 200);
      v163 = *(a1 + 216);
      v161 = v57;
      v162 = v58;
      v159 = v56;
      v160 = *(&v150 + 1);
      v59 = a1;
      sub_10000BE14(v149, &v124, &qword_101A00978);
      sub_10000BE14(v147, &v124, &qword_101A00978);
      v60 = _s8Freeform17TSContentLanguageO6ModelsO5ImageV4MaskV23__derived_struct_equalsySbAI_AItFZ_0(v158, &v132);
      sub_10000CAAC(&v117, &qword_101A00978);
      v61 = *(v59 + 136);
      v124 = *(v59 + 120);
      v125 = v61;
      v126 = *(v59 + 152);
      v127 = *(v59 + 168);
      v128 = v43;
      v62 = *(v59 + 200);
      v129 = *(v59 + 184);
      v130 = v62;
      v47 = v59;
      v131 = *(v59 + 216);
      sub_10000CAAC(&v124, &qword_101A00978);
      if (!v60)
      {
        return 0;
      }

      goto LABEL_53;
    }

LABEL_49:
    v48 = *(a1 + 136);
    v132 = *(a1 + 120);
    v133 = v48;
    v134 = *(a1 + 152);
    *&v135 = *(a1 + 168);
    *(&v135 + 1) = *(&v150 + 1);
    v49 = *(a1 + 200);
    v136 = *(a1 + 184);
    v137 = v49;
    v138 = *(a1 + 216);
    *&v141[15] = *&v146[47];
    *v141 = *&v146[32];
    v140 = *&v146[16];
    v139 = *v146;
    v142 = *(&v40 + 1);
    v145 = *(a2 + 216);
    v144 = *(a2 + 200);
    v143 = *(a2 + 184);
    sub_10000BE14(v149, v158, &qword_101A00978);
    sub_10000BE14(v147, v158, &qword_101A00978);
    sub_10000CAAC(&v132, &qword_101A00980);
    return 0;
  }

  if (*(&v40 + 1) != 1)
  {
    goto LABEL_49;
  }

  v44 = a2;
  v45 = *(a1 + 136);
  v132 = *(a1 + 120);
  v133 = v45;
  v134 = *(a1 + 152);
  *&v135 = *(a1 + 168);
  *(&v135 + 1) = 1;
  v46 = *(a1 + 200);
  v136 = *(a1 + 184);
  v137 = v46;
  v47 = a1;
  v138 = *(a1 + 216);
  sub_10000BE14(v149, v158, &qword_101A00978);
  sub_10000BE14(v147, v158, &qword_101A00978);
  sub_10000CAAC(&v132, &qword_101A00978);
LABEL_53:
  v63 = v47;
  v64 = *(v47 + 232);
  v65 = v44;
  v66 = *(v44 + 232);
  if (v64)
  {
    if (!v66)
    {
      return 0;
    }

    v68 = *(v47 + 240);
    v67 = *(v47 + 248);
    v69 = *(v47 + 256);
    v71 = *(v44 + 240);
    v70 = *(v44 + 248);
    v72 = *(v44 + 256);
    if (*(v47 + 224) != *(v44 + 224) || v64 != v66)
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65 = v44;
      v63 = v47;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }

    if (v69)
    {
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v72)
      {
        return 0;
      }

      v12 = 0;
      if (v68 != v71 || v67 != v70)
      {
        return v12;
      }
    }
  }

  else if (v66)
  {
    return 0;
  }

  v74 = *(v63 + 272);
  v75 = *(v63 + 312);
  v76 = *(v65 + 264);
  v77 = *(v65 + 272);
  v78 = *(v65 + 312);
  if (!(v75 >> 6))
  {
    if (v78 >= 0x40)
    {
      return 0;
    }

    v115 = v65;
    v116 = v63;
    v87 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*(v63 + 264));
    v89 = v88;
    if (v87 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v76) && v89 == v90)
    {
    }

    else
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v91 & 1) == 0)
      {
        return 0;
      }
    }

    v65 = v115;
    v63 = v116;
    if (v74 != v77)
    {
      return 0;
    }

    goto LABEL_81;
  }

  v79 = *(v65 + 280);
  v80 = *(v65 + 288);
  v81 = *(v65 + 296);
  v82 = *(v65 + 304);
  if (v75 >> 6 == 1)
  {
    v154[0] = *(v63 + 264);
    *&v154[1] = v74;
    v83 = *(v63 + 296);
    v155 = *(v63 + 280);
    v156 = v83;
    v157 = v75 & 0x3F;
    if ((v78 & 0xC0) != 0x40)
    {
      return 0;
    }

    *v146 = v76;
    *&v146[8] = v77;
    *&v146[16] = v79;
    *&v146[24] = v80;
    *&v146[32] = v81;
    *&v146[40] = v82;
    v146[48] = v78 & 0x3F;
    v84 = v63;
    v85 = v65;
    v86 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v154, v146);
    v65 = v85;
    v63 = v84;
    if ((v86 & 1) == 0)
    {
      return 0;
    }

LABEL_81:
    v92 = *(v63 + 368);
    v93 = *(v65 + 368);
    v94 = v93 & 0xFFFFFFFFFFFFFF00;
    if (v92 >> 8 == 0xFFFFFFFF)
    {
      if (v94 == 0xFFFFFFFF00)
      {
        return 1;
      }
    }

    else if (v94 != 0xFFFFFFFF00)
    {
      v96 = *(v63 + 320);
      v95 = *(v63 + 328);
      v98 = *(v63 + 336);
      v97 = *(v63 + 344);
      v100 = *(v63 + 352);
      v99 = *(v63 + 360);
      v102 = *(v63 + 376);
      v101 = *(v63 + 384);
      v103 = *(v63 + 392);
      v105 = *(v65 + 320);
      v104 = *(v65 + 328);
      v107 = *(v65 + 336);
      v106 = *(v65 + 344);
      v109 = *(v65 + 352);
      v108 = *(v65 + 360);
      v111 = *(v65 + 376);
      v110 = *(v65 + 384);
      v112 = v92 >> 62;
      v113 = v92 & 0x3FFFFFFFFFFFFFFFLL;
      v114 = *(v65 + 392);
      if (v112)
      {
        if (v112 == 1)
        {
          *&v117 = v96;
          *(&v117 + 1) = v95;
          *&v118 = v98;
          *(&v118 + 1) = v97;
          *&v119 = v100;
          *(&v119 + 1) = v99;
          *&v120 = v113;
          *(&v120 + 1) = v102;
          *&v121 = v101;
          *(&v121 + 1) = v103;
          if (v93 >> 62 != 1)
          {
            return 0;
          }

          *&v124 = v105;
          *(&v124 + 1) = v104;
          *&v125 = v107;
          *(&v125 + 1) = v106;
          *&v126 = v109;
          *(&v126 + 1) = v108;
          v127 = v93 & 0x3FFFFFFFFFFFFFFFLL;
          v128 = v111;
          *&v129 = v110;
          *(&v129 + 1) = v114;
          if (!_s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v117, &v124))
          {
            return 0;
          }
        }

        else
        {
          *&v117 = v96;
          *(&v117 + 1) = v95;
          *&v118 = v98;
          *(&v118 + 1) = v97;
          *&v119 = v100;
          *(&v119 + 1) = v99;
          *&v120 = v113;
          *(&v120 + 1) = v102;
          *&v121 = v101;
          if (v93 >> 62 != 2)
          {
            return 0;
          }

          *&v124 = v105;
          *(&v124 + 1) = v104;
          *&v125 = v107;
          *(&v125 + 1) = v106;
          *&v126 = v109;
          *(&v126 + 1) = v108;
          v127 = v93 & 0x3FFFFFFFFFFFFFFFLL;
          v128 = v111;
          *&v129 = v110;
          if (!_s8Freeform17TSContentLanguageO6ModelsO10DropShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v117, &v124))
          {
            return 0;
          }
        }
      }

      else
      {
        *&v117 = v96;
        *(&v117 + 1) = v95;
        *&v118 = v98;
        *(&v118 + 1) = v97;
        *&v119 = v100;
        *(&v119 + 1) = v99;
        *&v120 = v113;
        *(&v120 + 1) = v102;
        *&v121 = v101;
        *(&v121 + 1) = v103;
        if (v93 >> 62)
        {
          return 0;
        }

        *&v124 = v105;
        *(&v124 + 1) = v104;
        *&v125 = v107;
        *(&v125 + 1) = v106;
        *&v126 = v109;
        *(&v126 + 1) = v108;
        v127 = v93;
        v128 = v111;
        *&v129 = v110;
        *(&v129 + 1) = v114;
        if (!_s8Freeform17TSContentLanguageO6ModelsO13ContactShadowV23__derived_struct_equalsySbAG_AGtFZ_0(&v117, &v124))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  if ((v78 & 0xC0) != 0x80)
  {
    return 0;
  }

  v12 = 0;
  if (!(*&v77 | v76 | v79 | v80 | v81 | v82) && v78 == 128)
  {
    goto LABEL_81;
  }

  return v12;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ImageV16InstantAlphaPathV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (*(a1 + 32))
    {
      if (*(a2 + 32))
      {
        return 1;
      }
    }

    else if ((*(a2 + 32) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_100B1FF34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875650, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void *sub_100B1FF80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v83 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v56 - v6;
  __chkstk_darwin(v7);
  *v95 = &v56 - v8;
  __chkstk_darwin(v9);
  *&v95[8] = &v56 - v10;
  v11 = type metadata accessor for CodingUserInfoKey();
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  __chkstk_darwin(v11);
  v84 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = sub_1005B981C(&qword_101A00988);
  v88 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  v26 = a1[3];
  v160 = a1;
  sub_100020E58(a1, v26);
  sub_100B21494();
  v27 = *&v95[16];
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    goto LABEL_12;
  }

  *&v95[16] = v22;
  v94 = v19;
  v79 = v16;
  LOBYTE(v97) = 9;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v88;
  if (v29)
  {
    if (v28 == 0xD000000000000025 && v29 == 0x8000000101589A30)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v33[1] = 0;
        v33[2] = 0;
        *v33 = 0;
        swift_willThrow();
LABEL_11:
        (*(v30 + 8))(v25, v23);
LABEL_12:
        v94 = 0;
        memset(v95, 0, sizeof(v95));
        v89 = 0uLL;
        v92 = 0;
        v93 = 0;
        v90 = 0;
        v91 = 0;
        sub_100005070(v160);

        v97 = v89;
        v98 = *v95;
        *&v99 = *&v95[16];
        *(&v99 + 1) = v94;
        *&v100 = v93;
        *(&v100 + 1) = 1;
        *&v101 = v92;
        *(&v101 + 1) = v91;
        v102 = v90;
        LOBYTE(v103) = 0;
        sub_10000CAAC(&v97, &qword_101A00978);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v96[0]) = 10;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v97;
  if (v97)
  {
    if (qword_1019F1CE8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Image.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v35[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v36 = xmmword_101463530;
      *(v36 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v37 = v160;
  sub_100020E58(v160, v160[3]);
  v38 = dispatch thunk of Decoder.userInfo.getter();
  *&v78 = sub_1007B718C(0, v38, 0, 0);
  *(&v78 + 1) = v39;

  sub_100020E58(v37, v37[3]);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v96[0]) = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40 = v25;

  v76 = *(&v97 + 1);
  v77 = v97;
  v74 = *(&v98 + 1);
  v75 = v98;
  v73 = v99;
  v72 = WORD4(v99) | (BYTE10(v99) << 16);
  v41 = v160;
  sub_100020E58(v160, v160[3]);
  v42 = dispatch thunk of Decoder.userInfo.getter();
  v71 = sub_1007B71B4(2, v42, 0, 0);

  sub_100020E58(v41, v41[3]);
  v43 = dispatch thunk of Decoder.userInfo.getter();
  *&v70 = sub_1007B718C(3, v43, 0, 0);
  *(&v70 + 1) = v44;

  sub_100020E58(v41, v41[3]);
  v45 = dispatch thunk of Decoder.userInfo.getter();
  memset(v158, 0, sizeof(v158));
  v159 = -1;
  sub_1007BEC9C(4, v45, 0, 0, v158, v154);

  v80 = v154[0];
  v81 = v154[1];
  v153 = v155;
  sub_100020E58(v41, v41[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v148 = 5;
  sub_100B22504();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v40;
  v69 = v23;
  if (*(&v100 + 1) == 1)
  {

    v96[4] = v101;
    v96[5] = v102;
    LOBYTE(v96[6]) = v103;
    v96[0] = v97;
    v96[1] = v98;
    v96[2] = v99;
    v96[3] = v100;
    sub_10000CAAC(v96, &qword_101A00978);
    v89 = 0uLL;
    memset(v95, 0, sizeof(v95));
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
  }

  else
  {

    v89 = v97;
    *v95 = v98;
    *&v95[16] = v99;
    v93 = v100;
    v94 = *(&v99 + 1);
    v49 = *(&v100 + 1);
    v91 = *(&v101 + 1);
    v92 = v101;
    v47 = *(&v102 + 1);
    v90 = v102;
    v48 = v103;
  }

  memset(v142, 0, sizeof(v142));
  v143 = 0;
  v144 = 1;
  v145 = 0u;
  v146 = 0u;
  v147 = 0;
  sub_10000CAAC(v142, &qword_101A00978);
  sub_100020E58(v160, v160[3]);
  v50 = dispatch thunk of Decoder.userInfo.getter();
  v51 = v46;
  sub_1007B71DC(6, v50, 0, v156);

  *&v151[7] = v156[0];
  *&v151[23] = v156[1];
  v151[39] = v157;
  v52 = v160[3];
  v68 = v160[4];
  sub_100020E58(v160, v52);
  dispatch thunk of Decoder.userInfo.getter();
  v141 = 7;
  sub_100969848();
  v68 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  LODWORD(v85) = v100;
  v79 = v99;
  if (v99 >> 8 == 0xFFFFFFFF && v85 < 0x10)
  {

    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v79 = 0;
    v62 = 0;
    LODWORD(v85) = 128;
  }

  else
  {
    v65 = *(&v97 + 1);
    v66 = v97;
    v63 = *(&v98 + 1);
    v64 = v98;
    v62 = *(&v99 + 1);
  }

  sub_100020E58(v160, v160[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v140 = 8;
  sub_100B22CFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v67 = 0;

  v86 = *(&v97 + 1);
  v87 = v97;
  v57 = *(&v99 + 1);
  v58 = v99;
  v56 = v100;
  v83 = v98;
  v84 = *(&v100 + 1);
  v60 = *(&v98 + 1);
  v59 = *(&v101 + 1);
  v61 = v101;
  (*(v88 + 8))(v68, v69);
  *(&v96[16] + 1) = *v150;
  *(&v96[19] + 9) = *v149;
  v96[0] = v78;
  *&v96[1] = v77;
  *(&v96[1] + 1) = v76;
  *&v96[2] = v75;
  *(&v96[2] + 1) = v74;
  *&v96[3] = v73;
  *(&v96[7] + 1) = v152[0];
  DWORD1(v96[7]) = *(v152 + 3);
  *(&v96[15] + 9) = *&v151[32];
  v53 = v72;
  LODWORD(v88) = HIWORD(v72);
  BYTE10(v96[3]) = BYTE2(v72);
  WORD4(v96[3]) = v72;
  BYTE11(v96[3]) = v71;
  v96[4] = v70;
  v96[5] = v80;
  v96[6] = v81;
  *(&v96[14] + 9) = *&v151[16];
  *(&v96[13] + 9) = *v151;
  DWORD1(v96[16]) = *&v150[3];
  HIDWORD(v96[19]) = *&v149[3];
  v54 = v153;
  LOBYTE(v96[7]) = v153;
  v55 = v89;
  *(&v96[7] + 8) = v89;
  *(&v96[8] + 1) = *v95;
  v96[9] = *&v95[8];
  *&v96[10] = v94;
  *(&v96[10] + 1) = v93;
  *&v96[11] = v49;
  *(&v96[11] + 1) = v92;
  *&v96[12] = v91;
  *(&v96[12] + 1) = v90;
  *&v96[13] = v47;
  BYTE8(v96[13]) = v48;
  *(&v96[16] + 1) = v66;
  *&v96[17] = v65;
  *(&v96[17] + 1) = v64;
  *&v96[18] = v63;
  *(&v96[18] + 1) = v79;
  *&v96[19] = v62;
  BYTE8(v96[19]) = v85;
  *&v96[20] = v87;
  *(&v96[20] + 1) = v86;
  *&v96[21] = v83;
  *(&v96[21] + 1) = v60;
  *&v96[22] = v58;
  *(&v96[22] + 1) = v57;
  *&v96[23] = v56;
  *(&v96[23] + 1) = v84;
  *&v96[24] = v61;
  *(&v96[24] + 1) = v59;
  sub_100819A44(v96, &v97);
  sub_100005070(v160);
  v97 = v78;
  *&v98 = v77;
  *(&v98 + 1) = v76;
  *&v99 = v75;
  *(&v99 + 1) = v74;
  *&v100 = v73;
  BYTE10(v100) = v88;
  WORD4(v100) = v53;
  BYTE11(v100) = v71;
  v101 = v70;
  v102 = v80;
  v103 = v81;
  v104 = v54;
  v106 = v55;
  *v105 = v152[0];
  *&v105[3] = *(v152 + 3);
  v107 = *v95;
  v108 = *&v95[8];
  v109 = *&v95[16];
  v110 = v94;
  v111 = v93;
  v112 = v49;
  v113 = v92;
  v114 = v91;
  v115 = v90;
  v116 = v47;
  v117 = v48;
  v118 = *v151;
  v119 = *&v151[16];
  v120 = *&v151[32];
  *v121 = *v150;
  *&v121[3] = *&v150[3];
  v122 = v66;
  v123 = v65;
  v124 = v64;
  v125 = v63;
  v126 = v79;
  v127 = v62;
  v128 = v85;
  *v129 = *v149;
  *&v129[3] = *&v149[3];
  v130 = v87;
  v131 = v86;
  v132 = v83;
  v133 = v60;
  v134 = v58;
  v135 = v57;
  v136 = v56;
  v137 = v84;
  v138 = v61;
  v139 = v59;
  sub_100819AA0(&v97);
  return memcpy(v82, v96, 0x190uLL);
}

unint64_t sub_100B21494()
{
  result = qword_101A11690;
  if (!qword_101A11690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11690);
  }

  return result;
}

unint64_t sub_100B214E8()
{
  result = qword_101A11698;
  if (!qword_101A11698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A11698);
  }

  return result;
}

unint64_t sub_100B2153C()
{
  result = qword_101A116A0;
  if (!qword_101A116A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116A0);
  }

  return result;
}

unint64_t sub_100B21590()
{
  result = qword_101A116A8;
  if (!qword_101A116A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116A8);
  }

  return result;
}

unint64_t sub_100B215E4()
{
  result = qword_101A116B0;
  if (!qword_101A116B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A116B0);
  }

  return result;
}

unint64_t sub_100B21638(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101875778, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100B21684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v54 = &v48[-v4];
  v5 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_101A00968);
  v56 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48[-v9];
  sub_100020E58(a1, a1[3]);
  sub_100B21E50();
  v11 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    v84 = v11;
    v12 = a1;
LABEL_13:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 2;
LABEL_14:
    sub_100005070(v12);
    v65 = v24;
    v66 = v23;
    v67 = v22;
    v68 = v21;
    v69 = v20;
    v71 = BYTE2(v25);
    v70 = v25;
    v72 = v78;
    v73 = v79;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    return sub_100819B50(&v65);
  }

  v52 = v7;
  v13 = a1;
  LOBYTE(v65) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v15)
  {
    if (v14 == 0xD00000000000002ALL && v15 == 0x8000000101589A60)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v12 = a1;
        sub_1007C8648();
        v18 = swift_allocError();
        v19[1] = 0;
        v19[2] = 0;
        *v19 = 0;
        v84 = v18;
        swift_willThrow();
LABEL_12:
        (*(v56 + 8))(v10, v8);
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v57) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v65;
  if (v65)
  {
    if (qword_1019F1CF0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Image.Mask.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v27[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      v12 = v13;
      sub_1007C8648();
      v28 = swift_allocError();
      *v29 = xmmword_101463530;
      *(v29 + 16) = 0;
      v84 = v28;
      swift_willThrow();

      goto LABEL_12;
    }

    v84 = 0;
  }

  else
  {
    v84 = 0;
  }

  sub_100020E58(v13, v13[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v57) = 0;
  sub_1007C7E6C();
  v31 = v84;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v84 = v31;
  if (!v31)
  {
    v55 = v8;
    v12 = v13;

    v24 = v65;
    v23 = v66;
    v22 = v67;
    v21 = v68;
    v20 = v69;
    v25 = v70 | (v71 << 16);
    goto LABEL_32;
  }

  v51 = v30;
  v32 = v54;
  CodingUserInfoKey.init(rawValue:)();
  v33 = v55;
  result = (*(v55 + 48))(v32, 1, v5);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v34 = v52;
  (*(v33 + 32))(v52, v32, v5);
  v35 = v51;
  if (!*(v51 + 16) || (v36 = sub_1007C8514(v34), v34 = v52, (v37 & 1) == 0))
  {
    v40 = v34;
    v12 = v13;
    (*(v33 + 8))(v40, v5);
    v39 = v56;
LABEL_30:
    swift_willThrow();

    (*(v39 + 8))(v10, v8);
    goto LABEL_13;
  }

  sub_100064288(*(v35 + 56) + 32 * v36, &v65);
  (*(v33 + 8))(v34, v5);
  v38 = swift_dynamicCast();
  v39 = v56;
  v12 = v13;
  if (!v38 || (v64 & 1) == 0)
  {
    goto LABEL_30;
  }

  v55 = v8;

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v84 = 0;
  v25 = 2;
LABEL_32:
  v41 = v12[4];
  v51 = v12[3];
  v52 = v41;
  v54 = v12;
  sub_100020E58(v12, v51);
  v52 = dispatch thunk of Decoder.userInfo.getter();
  v42 = v84;
  sub_1007B74D4(1, v52, 0, 0, &v80);
  v84 = v42;
  if (v42)
  {
    v12 = v54;
    (*(v56 + 8))(v10, v55);

    goto LABEL_14;
  }

  (*(v56 + 8))(v10, v55);

  v43 = *(&v80 + 1);
  v55 = v81;
  v56 = v80;
  v51 = v82;
  v52 = *(&v81 + 1);
  v50 = *(&v82 + 1);
  v49 = v83;
  *&v57 = v24;
  *(&v57 + 1) = v23;
  *&v58 = v22;
  *(&v58 + 1) = v21;
  *&v59 = v20;
  BYTE10(v59) = BYTE2(v25);
  WORD4(v59) = v25;
  *(&v59 + 11) = v78;
  HIBYTE(v59) = v79;
  v60 = v80;
  v61 = v81;
  v62 = v82;
  v63 = v83;
  sub_100819AF4(&v57, &v65);
  sub_100005070(v54);
  v65 = v24;
  v66 = v23;
  v67 = v22;
  v68 = v21;
  v69 = v20;
  v71 = BYTE2(v25);
  v70 = v25;
  v72 = v78;
  v73 = v79;
  *&v74 = v56;
  *(&v74 + 1) = v43;
  *&v75 = v55;
  *(&v75 + 1) = v52;
  *&v76 = v51;
  *(&v76 + 1) = v50;
  v77 = v49;
  result = sub_100819B50(&v65);
  v44 = v62;
  v45 = v53;
  *(v53 + 64) = v61;
  *(v45 + 80) = v44;
  *(v45 + 96) = v63;
  v46 = v58;
  *v45 = v57;
  *(v45 + 16) = v46;
  v47 = v60;
  *(v45 + 32) = v59;
  *(v45 + 48) = v47;
  return result;
}