id sub_3AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSProgress progressWithTotalUnitCount:1];
  [v4 setCompletedUnitCount:1];
  v5 = [*(a1 + 32) exportToICS];
  v3[2](v3, v5, 0);

  return v4;
}

id sub_3B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSProgress progressWithTotalUnitCount:1];
  [v4 setCompletedUnitCount:1];
  v5 = [*(a1 + 32) exportToICS];
  v3[2](v3, v5, 0);

  return v4;
}

id sub_3C14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.calendar.continuity.event_selection"];
  v5 = [[CUIKUserActivityCalendarEvent alloc] initWithEvent:*(a1 + 32) view:0];
  [v5 updateActivity:v4];
  v6 = [v4 loadDataWithTypeIdentifier:kUINSUserActivityInternalType forItemProviderCompletionHandler:v3];

  return v6;
}

id sub_3CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSProgress progressWithTotalUnitCount:1];
  [v4 setCompletedUnitCount:1];
  v5 = [*(a1 + 32) dataUsingEncoding:4];
  v3[2](v3, v5, 0);

  return v4;
}

id sub_3D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSProgress progressWithTotalUnitCount:1];
  [v4 setCompletedUnitCount:1];
  v5 = [*(a1 + 32) dataUsingEncoding:10];
  v3[2](v3, v5, 0);

  return v4;
}