void sub_23D90C790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23D90D930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXRUIImageForRemoteAction(void *a1)
{
  v1 = a1;
  Type = AXDeviceGetType();
  v3 = AXRUIImageForRemoteActionWithDeviceType(v1, Type);

  return v3;
}

id AXRUIImageForRemoteActionWithDeviceType(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:*MEMORY[0x277CE74B0]])
  {
    v4 = a2 - 1;
    if (a2 - 1) < 7 && ((0x5Fu >> v4))
    {
      v5 = off_278BED670;
LABEL_8:
      v6 = v5[v4];
LABEL_34:
      v7 = MEMORY[0x277D755B8];
      v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28]];
      v9 = [v7 _systemImageNamed:v6 withConfiguration:v8];

      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (![v3 isEqualToString:*MEMORY[0x277CE74A0]])
  {
    if ([v3 isEqualToString:*MEMORY[0x277CE74F0]])
    {
      v6 = @"bell.badge.fill";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE74A8]])
    {
      v6 = @"switch.2";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7500]])
    {
      v6 = @"siri";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7540]])
    {
      v6 = @"chevron.backward.circle";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7548]])
    {
      goto LABEL_18;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7508]])
    {
      v6 = @"circle.circle.fill";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7510]])
    {
      v6 = @"square.grid.3x3.square";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7530]])
    {
      v6 = @"play.circle.fill";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7528]])
    {
LABEL_18:
      v6 = @"circle.fill";
      goto LABEL_34;
    }

    if ([v3 isEqualToString:*MEMORY[0x277CE7518]])
    {
LABEL_27:
      v6 = @"chevron.forward.2";
      goto LABEL_34;
    }

    if (([v3 isEqualToString:*MEMORY[0x277CE7520]] & 1) == 0)
    {
      if ([v3 isEqualToString:*MEMORY[0x277CE7538]])
      {
        v6 = @"stop.circle.fill";
        goto LABEL_34;
      }

      if ([v3 isEqualToString:*MEMORY[0x277CE75A0]])
      {
        v6 = @"hand.tap.fill";
        goto LABEL_34;
      }

      if ([v3 isEqualToString:*MEMORY[0x277CE7550]])
      {
        goto LABEL_27;
      }

      if (([v3 isEqualToString:*MEMORY[0x277CE7568]] & 1) == 0)
      {
        if ([v3 isEqualToString:*MEMORY[0x277CE7560]])
        {
          v6 = @"arrow.clockwise";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7578]])
        {
          v6 = @"arrow.counterclockwise";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7558]])
        {
          v6 = @"arrow.turn.right.down";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7570]])
        {
          v6 = @"arrow.turn.left.up";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7598]])
        {
          v6 = @"arrow.up.circle.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7580]])
        {
          v6 = @"arrow.down.circle.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7588]])
        {
          v6 = @"arrow.left.circle.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE7590]])
        {
          v6 = @"arrow.right.circle.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE74C0]])
        {
          v6 = @"playpause.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE74B8]])
        {
          v6 = @"forward.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE74C8]])
        {
          v6 = @"backward.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE74D8]])
        {
          v6 = @"speaker.wave.2.fill";
          goto LABEL_34;
        }

        if ([v3 isEqualToString:*MEMORY[0x277CE74D0]])
        {
          v6 = @"speaker.wave.1.fill";
          goto LABEL_34;
        }

        goto LABEL_63;
      }
    }

    v6 = @"chevron.backward.2";
    goto LABEL_34;
  }

  v4 = a2 - 1;
  if ((a2 - 1) < 5)
  {
    v5 = off_278BED6A8;
    goto LABEL_8;
  }

LABEL_63:
  v9 = 0;
LABEL_64:

  return v9;
}