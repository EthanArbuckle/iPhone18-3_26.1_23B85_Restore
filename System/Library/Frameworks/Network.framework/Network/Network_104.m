uint64_t sub_18211B0D8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  v11 = sub_182104788(a2, a3);
  if (v11 < 0x40)
  {
    v15 = *a7;
    if (*a7 <= 0x3F)
    {
      if (a4 < 0x40)
      {
        if (a5 < 0x40)
        {
          v13 = 1;
          v14 = 1;
        }

        else if (a5 < 0x4000)
        {
          v14 = 1;
          v13 = 2;
        }

        else if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v14 = 1;
          v13 = 8;
        }

        else
        {
          v14 = 1;
          v13 = 4;
        }
      }

      else
      {
        if (a4 < 0x4000)
        {
          if (a5 < 0x40)
          {
            v17 = 1;
            v13 = 1;
          }

          else
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 1;
                v13 = 8;
                goto LABEL_445;
              }

              v16 = 1;
              goto LABEL_325;
            }

            v17 = 1;
            v13 = 2;
          }

          v14 = 2;
          v16 = 1;
          goto LABEL_681;
        }

        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v17 = 1;
                v13 = 8;
                v14 = 8;
                v16 = 1;
                goto LABEL_681;
              }

              v17 = 1;
              v14 = 8;
              goto LABEL_462;
            }

            v17 = 1;
            v14 = 8;
            goto LABEL_374;
          }

          v14 = 8;
        }

        else
        {
          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (!(a5 >> 30))
              {
                v17 = 1;
                v13 = 4;
                v14 = 4;
                v16 = 1;
                goto LABEL_681;
              }

              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v17 = 1;
              v14 = 4;
LABEL_184:
              v13 = 8;
              v16 = 1;
              goto LABEL_681;
            }

            v17 = 1;
            v14 = 4;
            goto LABEL_374;
          }

          v14 = 4;
        }

        v13 = 1;
      }

      v17 = 1;
      v16 = 1;
      goto LABEL_681;
    }

    if (v15 >> 14)
    {
      if (v15 >> 30)
      {
        if (v15 >> 62)
        {
          goto LABEL_767;
        }

        if (a4 > 0x3F)
        {
          if (!(a4 >> 14))
          {
            if (a5 >= 0x40)
            {
              if (a5 < 0x4000)
              {
                v16 = 1;
                v17 = 8;
                goto LABEL_618;
              }

              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 1;
                goto LABEL_468;
              }

              v16 = 1;
              v17 = 8;
              goto LABEL_559;
            }

            v17 = 8;
            v16 = 1;
LABEL_572:
            v13 = 1;
            v14 = 2;
            goto LABEL_681;
          }

          if (!(a4 >> 30))
          {
            if (a5 < 0x40)
            {
              v17 = 8;
              v16 = 1;
              v13 = 1;
              v14 = 4;
              goto LABEL_681;
            }

            if (a5 < 0x4000)
            {
              v16 = 1;
              v17 = 8;
              v13 = 2;
              v14 = 4;
              goto LABEL_681;
            }

            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 1;
              v17 = 8;
              v13 = 8;
              v14 = 4;
              goto LABEL_681;
            }

            v16 = 1;
            goto LABEL_648;
          }

          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 < 0x40)
          {
            v17 = 8;
            v16 = 1;
            v13 = 1;
            v14 = 8;
            goto LABEL_681;
          }

          if (a5 < 0x4000)
          {
            v16 = 1;
            v17 = 8;
            v13 = 2;
            v14 = 8;
            goto LABEL_681;
          }

          if (!(a5 >> 30))
          {
            v16 = 1;
            v17 = 8;
            v13 = 4;
            v14 = 8;
            goto LABEL_681;
          }

          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v16 = 1;
          v17 = 8;
          goto LABEL_152;
        }

        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 1;
              goto LABEL_380;
            }

            v17 = 8;
            v16 = 1;
            goto LABEL_607;
          }

          v17 = 8;
          v16 = 1;
          goto LABEL_396;
        }

        v17 = 8;
        v14 = 1;
LABEL_383:
        v13 = 1;
        v16 = 1;
        goto LABEL_681;
      }

      if (a4 > 0x3F)
      {
        if (a4 >> 14)
        {
          if (!(a4 >> 30))
          {
            if (a5 < 0x40)
            {
              v14 = 4;
              v16 = 1;
LABEL_624:
              v13 = 1;
              v17 = 4;
              goto LABEL_681;
            }

            if (a5 < 0x4000)
            {
              v16 = 1;
              v14 = 4;
              goto LABEL_657;
            }

            if (!(a5 >> 30))
            {
              v16 = 1;
              v14 = 4;
              goto LABEL_654;
            }

            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v16 = 1;
            goto LABEL_418;
          }

          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 >= 0x40)
          {
            if (a5 < 0x4000)
            {
              v16 = 1;
              v17 = 4;
              goto LABEL_549;
            }

            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 1;
              v17 = 4;
              v14 = 8;
              v13 = 8;
              goto LABEL_681;
            }

            v16 = 1;
            v14 = 8;
LABEL_612:
            v17 = 4;
            v13 = 4;
            goto LABEL_681;
          }

          v17 = 4;
          v14 = 8;
        }

        else
        {
          if (a5 >= 0x40)
          {
            if (a5 < 0x4000)
            {
              v16 = 1;
              v17 = 4;
              v14 = 2;
              v13 = 2;
              goto LABEL_681;
            }

            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 1;
              v17 = 4;
              v14 = 2;
              v13 = 8;
              goto LABEL_681;
            }

            v16 = 1;
            v14 = 2;
            goto LABEL_612;
          }

          v17 = 4;
          v14 = 2;
        }

        v16 = 1;
        v13 = 1;
        goto LABEL_681;
      }

      if (a5 >= 0x40)
      {
        if (a5 >= 0x4000)
        {
          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v17 = 4;
LABEL_183:
            v14 = 1;
            goto LABEL_184;
          }

          v14 = 1;
          v17 = 4;
          goto LABEL_462;
        }

        v17 = 4;
        v14 = 1;
LABEL_374:
        v13 = 2;
        v16 = 1;
        goto LABEL_681;
      }

      v17 = 4;
LABEL_274:
      v13 = 1;
      v14 = 1;
      v16 = 1;
      goto LABEL_681;
    }

    if (a4 < 0x40)
    {
      if (a5 < 0x40)
      {
        v17 = 2;
        goto LABEL_274;
      }

      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 2;
          goto LABEL_183;
        }

        v17 = 2;
        v14 = 1;
LABEL_462:
        v13 = 4;
        v16 = 1;
        goto LABEL_681;
      }

      v14 = 1;
      v13 = 2;
    }

    else
    {
      if (a4 >= 0x4000)
      {
        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (!(a5 >> 30))
              {
                v16 = 1;
                v17 = 2;
                v14 = 8;
                v13 = 4;
                goto LABEL_681;
              }

              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 1;
              goto LABEL_76;
            }

            v16 = 1;
LABEL_471:
            v14 = 8;
            goto LABEL_472;
          }

          v17 = 2;
          v14 = 8;
        }

        else
        {
          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 1;
                v17 = 2;
                v14 = 4;
                v13 = 8;
                goto LABEL_681;
              }

              v16 = 1;
              v17 = 2;
LABEL_649:
              v13 = 4;
              v14 = 4;
              goto LABEL_681;
            }

            v16 = 1;
            v14 = 4;
            goto LABEL_472;
          }

          v17 = 2;
          v14 = 4;
        }

        goto LABEL_383;
      }

      if (a5 >= 0x40)
      {
        if (a5 >= 0x4000)
        {
          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v16 = 1;
            v14 = 2;
            v13 = 8;
            v17 = 2;
            goto LABEL_681;
          }

          v16 = 1;
          goto LABEL_427;
        }

        v16 = 1;
        goto LABEL_345;
      }

      v14 = 2;
      v13 = 1;
    }

    v17 = 2;
    v16 = 1;
    goto LABEL_681;
  }

  if (v11 < 0x4000)
  {
    v18 = *a7;
    if (*a7 < 0x40)
    {
      if (a4 > 0x3F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_767;
            }

            if (a5 < 0x40)
            {
              v16 = 2;
              v13 = 1;
            }

            else if (a5 < 0x4000)
            {
              v16 = 2;
              v13 = 2;
            }

            else if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 2;
              v13 = 8;
            }

            else
            {
              v16 = 2;
              v13 = 4;
            }

            v14 = 8;
            v17 = 1;
          }

          else
          {
            if (a5 < 0x40)
            {
              v16 = 2;
              v13 = 1;
            }

            else if (a5 < 0x4000)
            {
              v16 = 2;
              v13 = 2;
            }

            else if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 2;
              v13 = 8;
            }

            else
            {
              v16 = 2;
              v13 = 4;
            }

            v14 = 4;
            v17 = 1;
          }

          goto LABEL_681;
        }

        if (a5 < 0x40)
        {
          v16 = 2;
          v17 = 1;
          goto LABEL_572;
        }

        if (a5 < 0x4000)
        {
          v17 = 1;
          v16 = 2;
          goto LABEL_618;
        }

        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 1;
          v16 = 2;
          goto LABEL_469;
        }

        v17 = 1;
        goto LABEL_429;
      }

      if (a5 < 0x40)
      {
        v16 = 2;
        v17 = 1;
        goto LABEL_499;
      }

      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v16 = 2;
          v17 = 1;
          goto LABEL_381;
        }

        v16 = 2;
        v17 = 1;
        goto LABEL_607;
      }

      v17 = 1;
LABEL_257:
      v16 = 2;
      goto LABEL_396;
    }

    if (v18 >= 0x4000)
    {
      if (v18 >> 30)
      {
        if (v18 >> 62)
        {
          goto LABEL_767;
        }

        if (a4 >= 0x40)
        {
          if (a4 >= 0x4000)
          {
            if (a4 >> 30)
            {
              if (a4 >> 62)
              {
                goto LABEL_767;
              }

              if (a5 >= 0x40)
              {
                if (a5 < 0x4000)
                {
                  v14 = 8;
                  v13 = 2;
                  v17 = 8;
                  v16 = 2;
                  goto LABEL_681;
                }

                if (!(a5 >> 30))
                {
                  v16 = 2;
                  v14 = 8;
                  v13 = 4;
                  v17 = 8;
                  goto LABEL_681;
                }

                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 2;
LABEL_66:
                v13 = 8;
                v14 = 8;
                v17 = 8;
                goto LABEL_681;
              }

              v16 = 2;
              goto LABEL_628;
            }

            if (a5 < 0x40)
            {
              v16 = 2;
              v17 = 8;
              v14 = 4;
              v13 = 1;
              goto LABEL_681;
            }

            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 2;
                v14 = 4;
                v13 = 8;
                v17 = 8;
                goto LABEL_681;
              }

              v16 = 2;
LABEL_648:
              v17 = 8;
              goto LABEL_649;
            }

            v17 = 8;
            v14 = 4;
LABEL_614:
            v13 = 2;
            v16 = 2;
            goto LABEL_681;
          }

          if (a5 < 0x40)
          {
            v17 = 8;
            v16 = 2;
            goto LABEL_572;
          }

          if (a5 < 0x4000)
          {
            v17 = 8;
            v16 = 2;
            goto LABEL_618;
          }

          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v16 = 2;
            goto LABEL_468;
          }

          v17 = 8;
LABEL_429:
          v16 = 2;
          goto LABEL_559;
        }

        if (a5 < 0x40)
        {
          v16 = 2;
LABEL_498:
          v17 = 8;
          goto LABEL_499;
        }

        if (a5 >= 0x4000)
        {
          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v16 = 2;
            goto LABEL_380;
          }

          v16 = 2;
          v17 = 8;
LABEL_607:
          v13 = 4;
          v14 = 1;
          goto LABEL_681;
        }

        v17 = 8;
        goto LABEL_257;
      }

      if (a4 < 0x40)
      {
        if (a5 < 0x40)
        {
          v16 = 2;
          goto LABEL_504;
        }

        if (a5 < 0x4000)
        {
          v17 = 4;
          v14 = 1;
          v16 = 2;
          v13 = 2;
          goto LABEL_681;
        }

        if (!(a5 >> 30))
        {
          v16 = 2;
LABEL_611:
          v14 = 1;
          goto LABEL_612;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v16 = 2;
        v17 = 4;
        goto LABEL_269;
      }

      if (a4 < 0x4000)
      {
        if (a5 < 0x40)
        {
          v16 = 2;
          v13 = 1;
        }

        else if (a5 < 0x4000)
        {
          v16 = 2;
          v13 = 2;
        }

        else if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v16 = 2;
          v13 = 8;
        }

        else
        {
          v16 = 2;
          v13 = 4;
        }

        v14 = 2;
        v17 = 4;
        goto LABEL_681;
      }

      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          goto LABEL_767;
        }

        if (a5 < 0x40)
        {
          v16 = 2;
          v17 = 4;
          goto LABEL_552;
        }

        if (a5 < 0x4000)
        {
          v17 = 4;
          v14 = 8;
          goto LABEL_614;
        }

        if (!(a5 >> 30))
        {
          v16 = 2;
          v14 = 8;
          goto LABEL_654;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v16 = 2;
        v17 = 4;
LABEL_152:
        v13 = 8;
        v14 = 8;
        goto LABEL_681;
      }

      if (a5 < 0x40)
      {
        v16 = 2;
LABEL_623:
        v14 = 4;
        goto LABEL_624;
      }

      if (a5 < 0x4000)
      {
        v14 = 4;
        v16 = 2;
        goto LABEL_657;
      }

      if (!(a5 >> 30))
      {
        v16 = 2;
        v14 = 4;
        goto LABEL_654;
      }

      if (a5 >> 62)
      {
        goto LABEL_767;
      }

      v16 = 2;
LABEL_418:
      v14 = 4;
      v13 = 8;
      v17 = 4;
      goto LABEL_681;
    }

    if (a4 <= 0x3F)
    {
      if (a5 < 0x40)
      {
        v17 = 2;
        v13 = 1;
        v14 = 1;
        v16 = 2;
        goto LABEL_681;
      }

      if (a5 >= 0x4000)
      {
        if (!(a5 >> 30))
        {
          v17 = 2;
          v14 = 1;
          goto LABEL_432;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v17 = 2;
        v14 = 1;
LABEL_190:
        v13 = 8;
        v16 = 2;
        goto LABEL_681;
      }

      v14 = 1;
    }

    else
    {
      if (!(a4 >> 14))
      {
        if (a5 < 0x40)
        {
          v14 = 2;
          v13 = 1;
        }

        else if (a5 < 0x4000)
        {
          v13 = 2;
          v14 = 2;
        }

        else if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v14 = 2;
          v13 = 8;
        }

        else
        {
          v14 = 2;
          v13 = 4;
        }

        goto LABEL_523;
      }

      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          goto LABEL_767;
        }

        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v17 = 2;
              v13 = 8;
              v14 = 8;
              v16 = 2;
              goto LABEL_681;
            }

            v17 = 2;
            v14 = 8;
LABEL_432:
            v13 = 4;
            v16 = 2;
            goto LABEL_681;
          }

          v14 = 8;
          goto LABEL_349;
        }

        v17 = 2;
        v14 = 8;
LABEL_477:
        v13 = 1;
        v16 = 2;
        goto LABEL_681;
      }

      if (a5 < 0x40)
      {
        v17 = 2;
        v14 = 4;
        goto LABEL_477;
      }

      if (a5 >= 0x4000)
      {
        if (!(a5 >> 30))
        {
          v17 = 2;
          v13 = 4;
          v14 = 4;
          v16 = 2;
          goto LABEL_681;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v17 = 2;
        v14 = 4;
        goto LABEL_190;
      }

      v14 = 4;
    }

LABEL_349:
    v13 = 2;
LABEL_523:
    v17 = 2;
    v16 = 2;
    goto LABEL_681;
  }

  if (!(v11 >> 30))
  {
    v19 = *a7;
    if (*a7 >= 0x40)
    {
      if (v19 >= 0x4000)
      {
        if (v19 >> 30)
        {
          if (v19 >> 62)
          {
            goto LABEL_767;
          }

          if (a4 >= 0x40)
          {
            if (a4 >= 0x4000)
            {
              if (a4 >> 30)
              {
                if (a4 >> 62)
                {
                  goto LABEL_767;
                }

                if (a5 >= 0x40)
                {
                  if (a5 < 0x4000)
                  {
                    v16 = 4;
                    v14 = 8;
                    v13 = 2;
                    v17 = 8;
                    goto LABEL_681;
                  }

                  if (a5 >> 30)
                  {
                    if (a5 >> 62)
                    {
                      goto LABEL_767;
                    }

                    v16 = 4;
                    goto LABEL_66;
                  }

                  v14 = 8;
                  v13 = 4;
LABEL_675:
                  v17 = 8;
                  v16 = 4;
                  goto LABEL_681;
                }

                v16 = 4;
LABEL_628:
                v14 = 8;
                v13 = 1;
                v17 = 8;
                goto LABEL_681;
              }

              if (a5 >= 0x40)
              {
                if (a5 >= 0x4000)
                {
                  if (a5 >> 30)
                  {
                    if (a5 >> 62)
                    {
                      goto LABEL_767;
                    }

                    v14 = 4;
                    v13 = 8;
                    goto LABEL_675;
                  }

                  v17 = 8;
LABEL_672:
                  v13 = 4;
                  v14 = 4;
                  v16 = 4;
                  goto LABEL_681;
                }

                v17 = 8;
                goto LABEL_530;
              }

              v17 = 8;
              goto LABEL_620;
            }

            if (a5 >= 0x40)
            {
              if (a5 < 0x4000)
              {
                v16 = 4;
                v17 = 8;
                goto LABEL_618;
              }

              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 4;
LABEL_468:
                v17 = 8;
LABEL_469:
                v13 = 8;
                v14 = 2;
                goto LABEL_681;
              }

              v17 = 8;
              v16 = 4;
LABEL_559:
              v13 = 4;
              v14 = 2;
              goto LABEL_681;
            }

            v16 = 4;
            v17 = 8;
            goto LABEL_572;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 4;
LABEL_380:
                v17 = 8;
LABEL_381:
                v13 = 8;
                v14 = 1;
                goto LABEL_681;
              }

              v17 = 8;
              v16 = 4;
              goto LABEL_607;
            }

            v16 = 4;
            v17 = 8;
LABEL_396:
            v13 = 2;
            v14 = 1;
            goto LABEL_681;
          }

          v16 = 4;
          goto LABEL_498;
        }

        if (a4 >= 0x40)
        {
          if (a4 >= 0x4000)
          {
            if (!(a4 >> 30))
            {
              if (a5 < 0x40)
              {
                v14 = 4;
                v13 = 1;
              }

              else if (a5 < 0x4000)
              {
                v14 = 4;
                v13 = 2;
              }

              else if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v14 = 4;
                v13 = 8;
              }

              else
              {
                v13 = 4;
                v14 = 4;
              }

              goto LABEL_670;
            }

            if (a4 >> 62)
            {
              goto LABEL_767;
            }

            if (a5 >= 0x40)
            {
              if (a5 < 0x4000)
              {
                v17 = 4;
                v14 = 8;
                goto LABEL_534;
              }

              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v17 = 4;
                v13 = 8;
                v14 = 8;
                v16 = 4;
                goto LABEL_681;
              }

              v14 = 8;
              goto LABEL_669;
            }

            v17 = 4;
            v14 = 8;
LABEL_621:
            v13 = 1;
            v16 = 4;
            goto LABEL_681;
          }

          if (a5 < 0x40)
          {
            v17 = 4;
            v14 = 2;
            goto LABEL_621;
          }

          if (a5 < 0x4000)
          {
            v17 = 4;
            v13 = 2;
            v14 = 2;
            v16 = 4;
            goto LABEL_681;
          }

          if (!(a5 >> 30))
          {
            v14 = 2;
LABEL_669:
            v13 = 4;
LABEL_670:
            v17 = 4;
            v16 = 4;
            goto LABEL_681;
          }

          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 4;
          v14 = 2;
LABEL_439:
          v13 = 8;
          v16 = 4;
          goto LABEL_681;
        }

        if (a5 < 0x40)
        {
          v17 = 4;
          v14 = 1;
          goto LABEL_621;
        }

        if (a5 < 0x4000)
        {
          v17 = 4;
          v14 = 1;
          goto LABEL_534;
        }

        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 4;
          v14 = 1;
          goto LABEL_439;
        }

        v14 = 1;
        v17 = 4;
LABEL_645:
        v13 = 4;
        v16 = 4;
        goto LABEL_681;
      }

      if (a4 >= 0x40)
      {
        if (a4 < 0x4000)
        {
          if (a5 < 0x40)
          {
            v16 = 4;
            v13 = 1;
            goto LABEL_454;
          }

          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v16 = 4;
              v13 = 8;
            }

            else
            {
              v16 = 4;
              v13 = 4;
            }

            goto LABEL_454;
          }

          v16 = 4;
LABEL_345:
          v13 = 2;
LABEL_454:
          v14 = 2;
          v17 = 2;
          goto LABEL_681;
        }

        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (a5 >> 62)
                {
                  goto LABEL_767;
                }

                v16 = 4;
LABEL_76:
                v17 = 2;
                goto LABEL_152;
              }

              v17 = 2;
LABEL_644:
              v14 = 8;
              goto LABEL_645;
            }

            v16 = 4;
            goto LABEL_471;
          }

          v16 = 4;
          v17 = 2;
LABEL_552:
          v14 = 8;
          v13 = 1;
          goto LABEL_681;
        }

        if (a5 < 0x40)
        {
          v17 = 2;
LABEL_620:
          v14 = 4;
          goto LABEL_621;
        }

        if (a5 < 0x4000)
        {
          v14 = 4;
          v13 = 2;
          v17 = 2;
          v16 = 4;
          goto LABEL_681;
        }

        if (!(a5 >> 30))
        {
          v17 = 2;
          goto LABEL_672;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v17 = 2;
LABEL_425:
        v14 = 4;
        goto LABEL_439;
      }

      if (a5 >= 0x40)
      {
        if (a5 >= 0x4000)
        {
          if (!(a5 >> 30))
          {
            v17 = 2;
            v14 = 1;
            goto LABEL_645;
          }

          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v16 = 4;
          v17 = 2;
LABEL_269:
          v14 = 1;
          v13 = 8;
          goto LABEL_681;
        }

        v16 = 4;
        v14 = 1;
LABEL_472:
        v13 = 2;
        v17 = 2;
        goto LABEL_681;
      }

      v16 = 4;
      v17 = 2;
LABEL_499:
      v13 = 1;
      v14 = 1;
      goto LABEL_681;
    }

    if (a4 < 0x40)
    {
      if (a5 < 0x40)
      {
        v16 = 4;
        goto LABEL_313;
      }

      if (a5 < 0x4000)
      {
        v16 = 4;
        goto LABEL_398;
      }

      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v16 = 4;
        v14 = 1;
        v13 = 8;
        v17 = 1;
        goto LABEL_681;
      }

      v14 = 1;
      v13 = 4;
      goto LABEL_451;
    }

    if (a4 >= 0x4000)
    {
      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          goto LABEL_767;
        }

        if (a5 < 0x40)
        {
          v16 = 4;
          v14 = 8;
          goto LABEL_501;
        }

        if (a5 >= 0x4000)
        {
          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v16 = 4;
            v17 = 1;
            goto LABEL_152;
          }

          v17 = 1;
          goto LABEL_644;
        }

        v16 = 4;
        v17 = 1;
LABEL_549:
        v14 = 8;
        v13 = 2;
        goto LABEL_681;
      }

      if (a5 >= 0x40)
      {
        if (a5 < 0x4000)
        {
          v17 = 1;
LABEL_530:
          v14 = 4;
LABEL_534:
          v13 = 2;
          v16 = 4;
          goto LABEL_681;
        }

        if (!(a5 >> 30))
        {
          v17 = 1;
          goto LABEL_672;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v17 = 1;
        goto LABEL_425;
      }

      v14 = 4;
      v13 = 1;
LABEL_451:
      v17 = 1;
      v16 = 4;
      goto LABEL_681;
    }

    if (a5 < 0x40)
    {
      v16 = 4;
      v13 = 1;
      goto LABEL_445;
    }

    if (a5 < 0x4000)
    {
      v16 = 4;
      v13 = 2;
      goto LABEL_445;
    }

    if (a5 >> 30)
    {
      if (a5 >> 62)
      {
        goto LABEL_767;
      }

      v16 = 4;
      v13 = 8;
      goto LABEL_445;
    }

    v16 = 4;
LABEL_325:
    v13 = 4;
LABEL_445:
    v14 = 2;
    v17 = 1;
    goto LABEL_681;
  }

  if (v11 >> 62)
  {
    goto LABEL_767;
  }

  v12 = *a7;
  if (*a7 < 0x40)
  {
    if (a4 >= 0x40)
    {
      if (a4 < 0x4000)
      {
        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            if (!(a5 >> 30))
            {
              v16 = 8;
              v17 = 1;
              v14 = 2;
              v13 = 4;
              goto LABEL_681;
            }

            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v17 = 1;
            goto LABEL_305;
          }

          v16 = 8;
          v17 = 1;
          goto LABEL_618;
        }

        v16 = 8;
        v14 = 2;
      }

      else
      {
        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 < 0x40)
          {
            v14 = 8;
            v13 = 1;
            v17 = 1;
            goto LABEL_680;
          }

          if (a5 < 0x4000)
          {
            v17 = 1;
            goto LABEL_583;
          }

          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v17 = 1;
            goto LABEL_286;
          }

          v17 = 1;
LABEL_661:
          v14 = 8;
          v13 = 4;
          goto LABEL_680;
        }

        if (a5 >= 0x40)
        {
          if (a5 < 0x4000)
          {
            v16 = 8;
            v17 = 1;
            v14 = 4;
            v13 = 2;
            goto LABEL_681;
          }

          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v17 = 1;
            v14 = 4;
            v13 = 8;
            goto LABEL_680;
          }

          v16 = 8;
          v17 = 1;
          goto LABEL_649;
        }

        v16 = 8;
        v14 = 4;
      }

LABEL_501:
      v13 = 1;
      v17 = 1;
      goto LABEL_681;
    }

    if (a5 >= 0x40)
    {
      if (a5 >= 0x4000)
      {
        if (!(a5 >> 30))
        {
          v16 = 8;
          v14 = 1;
          v13 = 4;
          v17 = 1;
          goto LABEL_681;
        }

        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v14 = 1;
        v13 = 8;
        v17 = 1;
        goto LABEL_680;
      }

      v16 = 8;
LABEL_398:
      v14 = 1;
      v13 = 2;
      v17 = 1;
      goto LABEL_681;
    }

    v16 = 8;
LABEL_313:
    v13 = 1;
    v14 = 1;
    v17 = 1;
    goto LABEL_681;
  }

  if (v12 < 0x4000)
  {
    if (a4 < 0x40)
    {
      if (a5 < 0x40)
      {
        v16 = 8;
        v13 = 1;
      }

      else if (a5 < 0x4000)
      {
        v16 = 8;
        v13 = 2;
      }

      else
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v13 = 8;
          v14 = 1;
          goto LABEL_631;
        }

        v16 = 8;
        v13 = 4;
      }

      v14 = 1;
      v17 = 2;
      goto LABEL_681;
    }

    if (a4 >= 0x4000)
    {
      if (!(a4 >> 30))
      {
        if (a5 < 0x40)
        {
          v16 = 8;
          v13 = 1;
        }

        else if (a5 < 0x4000)
        {
          v16 = 8;
          v13 = 2;
        }

        else if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v16 = 8;
          v13 = 8;
        }

        else
        {
          v16 = 8;
          v13 = 4;
        }

        v14 = 4;
        v17 = 2;
        goto LABEL_681;
      }

      if (a4 >> 62)
      {
        goto LABEL_767;
      }

      if (a5 < 0x40)
      {
        v17 = 2;
        goto LABEL_633;
      }

      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 2;
LABEL_286:
          v13 = 8;
          v14 = 8;
          goto LABEL_680;
        }

        v17 = 2;
        goto LABEL_661;
      }

      v14 = 8;
      v13 = 2;
LABEL_631:
      v17 = 2;
      goto LABEL_680;
    }

    if (a5 < 0x40)
    {
      v16 = 8;
      v14 = 2;
      v13 = 1;
      v17 = 2;
      goto LABEL_681;
    }

    if (a5 >= 0x4000)
    {
      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v14 = 2;
        v13 = 8;
        goto LABEL_631;
      }

      v16 = 8;
LABEL_427:
      v14 = 2;
      v13 = 4;
      v17 = 2;
      goto LABEL_681;
    }

    v16 = 8;
    goto LABEL_345;
  }

  if (!(v12 >> 30))
  {
    if (a4 >= 0x40)
    {
      if (a4 >= 0x4000)
      {
        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_767;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (!(a5 >> 30))
              {
                v14 = 8;
                v13 = 4;
                v17 = 4;
                goto LABEL_680;
              }

              if (a5 >> 62)
              {
                goto LABEL_767;
              }

              v17 = 4;
              goto LABEL_286;
            }

            v17 = 4;
LABEL_583:
            v14 = 8;
            v13 = 2;
            goto LABEL_680;
          }

          v17 = 4;
LABEL_633:
          v14 = 8;
          v13 = 1;
          goto LABEL_680;
        }

        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            if (!(a5 >> 30))
            {
              v16 = 8;
              v13 = 4;
              v14 = 4;
              v17 = 4;
              goto LABEL_681;
            }

            if (a5 >> 62)
            {
              goto LABEL_767;
            }

            v14 = 4;
            v13 = 8;
            v17 = 4;
            goto LABEL_680;
          }

          v16 = 8;
          v14 = 4;
LABEL_657:
          v13 = 2;
          v17 = 4;
          goto LABEL_681;
        }

        v16 = 8;
        goto LABEL_623;
      }

      if (a5 < 0x40)
      {
        v16 = 8;
        v17 = 4;
        v14 = 2;
        v13 = 1;
        goto LABEL_681;
      }

      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_767;
          }

          v17 = 4;
LABEL_305:
          v14 = 2;
          v13 = 8;
          goto LABEL_680;
        }

        v16 = 8;
        v14 = 2;
LABEL_654:
        v13 = 4;
        v17 = 4;
        goto LABEL_681;
      }

      v16 = 8;
      v17 = 4;
LABEL_618:
      v13 = 2;
      v14 = 2;
      goto LABEL_681;
    }

    if (a5 >= 0x40)
    {
      if (a5 < 0x4000)
      {
        v16 = 8;
        v17 = 4;
        v14 = 1;
        v13 = 2;
        goto LABEL_681;
      }

      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v17 = 4;
        v14 = 1;
        v16 = 8;
        v13 = 8;
        goto LABEL_681;
      }

      v16 = 8;
      goto LABEL_611;
    }

    v16 = 8;
LABEL_504:
    v17 = 4;
    v14 = 1;
    v13 = 1;
    goto LABEL_681;
  }

  if (v12 >> 62)
  {
    goto LABEL_767;
  }

  if (a4 < 0x40)
  {
    if (a5 < 0x40)
    {
      v17 = 8;
      v13 = 1;
      v14 = 1;
    }

    else if (a5 < 0x4000)
    {
      v17 = 8;
      v13 = 2;
      v14 = 1;
    }

    else if (a5 >> 30)
    {
      if (a5 >> 62)
      {
        goto LABEL_767;
      }

      v17 = 8;
      v13 = 8;
      v14 = 1;
    }

    else
    {
      v17 = 8;
      v13 = 4;
      v14 = 1;
    }

    goto LABEL_680;
  }

  if (a4 >= 0x4000)
  {
    if (a4 >> 30)
    {
      if (a4 >> 62)
      {
        goto LABEL_767;
      }

      if (a5 < 0x40)
      {
        v14 = 8;
        v13 = 1;
      }

      else if (a5 < 0x4000)
      {
        v14 = 8;
        v13 = 2;
      }

      else if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v13 = 8;
        v14 = 8;
      }

      else
      {
        v14 = 8;
        v13 = 4;
      }

      goto LABEL_679;
    }

    if (a5 < 0x40)
    {
      v17 = 8;
      v14 = 4;
      v13 = 1;
    }

    else if (a5 < 0x4000)
    {
      v17 = 8;
      v14 = 4;
      v13 = 2;
    }

    else
    {
      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_767;
        }

        v14 = 4;
        v13 = 8;
LABEL_679:
        v17 = 8;
        goto LABEL_680;
      }

      v17 = 8;
      v13 = 4;
      v14 = 4;
    }

LABEL_680:
    v16 = 8;
    goto LABEL_681;
  }

  if (a5 < 0x40)
  {
    v16 = 8;
    v13 = 1;
  }

  else if (a5 < 0x4000)
  {
    v16 = 8;
    v13 = 2;
  }

  else if (a5 >> 30)
  {
    if (a5 >> 62)
    {
      goto LABEL_767;
    }

    v16 = 8;
    v13 = 8;
  }

  else
  {
    v16 = 8;
    v13 = 4;
  }

  v14 = 2;
  v17 = 8;
LABEL_681:
  v20 = sub_182296F2C(a6);
  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
LABEL_764:
    __break(1u);
LABEL_765:
    __break(1u);
    goto LABEL_766;
  }

  v22 = v20;
  if (v21 < 64)
  {
    v23 = 1;
    if (*(a6 + 16))
    {
      goto LABEL_689;
    }

    goto LABEL_754;
  }

  if (v21 < 0x4000)
  {
    v23 = 2;
    if (*(a6 + 16))
    {
      goto LABEL_689;
    }

    goto LABEL_754;
  }

  if (!(v21 >> 30))
  {
    goto LABEL_757;
  }

  if (v21 >> 62)
  {
    while (1)
    {
LABEL_767:
      sub_182AD3EA8();
      __break(1u);
    }
  }

  v23 = 8;
  if (*(a6 + 16))
  {
    goto LABEL_689;
  }

LABEL_754:
  while (1)
  {
    __break(1u);
LABEL_755:
    v25 = 2;
    v26 = v20 == 1;
    if (v20 >= 1)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_757:
      v23 = 4;
      if (!*(a6 + 16))
      {
        break;
      }

LABEL_689:
      v24 = *(a6 + 40);
      if (v24 < 0x40)
      {
        v25 = 1;
        v26 = v20 == 1;
        if (v20 >= 1)
        {
          goto LABEL_696;
        }
      }

      else
      {
        if (v24 < 0x4000)
        {
          goto LABEL_755;
        }

        if (v24 >> 30)
        {
          if (v24 >> 62)
          {
            goto LABEL_767;
          }

          v25 = 8;
          v26 = v20 == 1;
          if (v20 >= 1)
          {
            goto LABEL_696;
          }
        }

        else
        {
          v25 = 4;
          v26 = v20 == 1;
          if (v20 >= 1)
          {
            goto LABEL_696;
          }
        }
      }
    }
  }

LABEL_696:
  v47 = v25;
  v48 = v23;
  v49 = v13;
  v50 = v17;
  if (!v26)
  {
    v32 = (a6 + 56);
    v33 = MEMORY[0x1E69E7CC0];
    v34 = 1;
    v35 = a6;
    while (v22 != v34)
    {
      if (*(a6 + 16) <= v34)
      {
        goto LABEL_763;
      }

      v36 = *(v32 - 1);
      if (v36 < 0x40)
      {
        v40 = *v32;
        if (*v32 < 0x40)
        {
          v38 = 1;
          v39 = 1;
        }

        else if (v40 < 0x4000)
        {
          v38 = 2;
          v39 = 1;
        }

        else if (v40 >> 30)
        {
          if (v40 >> 62)
          {
            goto LABEL_767;
          }

          v38 = 8;
          v39 = 1;
        }

        else
        {
          v38 = 4;
          v39 = 1;
        }
      }

      else if (v36 < 0x4000)
      {
        v41 = *v32;
        if (*v32 < 0x40)
        {
          v38 = 1;
        }

        else if (v41 < 0x4000)
        {
          v38 = 2;
        }

        else if (v41 >> 30)
        {
          if (v41 >> 62)
          {
            goto LABEL_767;
          }

          v38 = 8;
        }

        else
        {
          v38 = 4;
        }

        v39 = 2;
      }

      else if (v36 >> 30)
      {
        if (v36 >> 62)
        {
          goto LABEL_767;
        }

        v37 = *v32;
        if (*v32 < 0x40)
        {
          v38 = 1;
          v39 = 8;
        }

        else if (v37 < 0x4000)
        {
          v38 = 2;
          v39 = 8;
        }

        else if (v37 >> 30)
        {
          if (v37 >> 62)
          {
            goto LABEL_767;
          }

          v38 = 8;
          v39 = 8;
        }

        else
        {
          v38 = 4;
          v39 = 8;
        }
      }

      else
      {
        v42 = *v32;
        if (*v32 < 0x40)
        {
          v38 = 1;
          v39 = 4;
        }

        else if (v42 < 0x4000)
        {
          v38 = 2;
          v39 = 4;
        }

        else if (v42 >> 30)
        {
          if (v42 >> 62)
          {
            goto LABEL_767;
          }

          v38 = 8;
          v39 = 4;
        }

        else
        {
          v38 = 4;
          v39 = 4;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_181F5A904(0, *(v33 + 2) + 1, 1, v33);
      }

      v44 = *(v33 + 2);
      v43 = *(v33 + 3);
      if (v44 >= v43 >> 1)
      {
        v33 = sub_181F5A904((v43 > 1), v44 + 1, 1, v33);
      }

      ++v34;
      *(v33 + 2) = v44 + 1;
      *&v33[8 * v44 + 32] = v39 + v38;
      v32 += 2;
      a6 = v35;
      if (v22 == v34)
      {
        goto LABEL_699;
      }
    }

LABEL_762:
    __break(1u);
LABEL_763:
    __break(1u);
    goto LABEL_764;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_699:
  v27 = sub_182296F2C(v33);
  if (v27)
  {
    if (v27 < 1)
    {
LABEL_766:
      __break(1u);
      goto LABEL_767;
    }

    v28 = 0;
    v29 = 32;
    while (1)
    {
      v30 = *&v33[v29];
      v31 = __OFADD__(v28, v30);
      v28 += v30;
      if (v31)
      {
        break;
      }

      v29 += 8;
      if (!--v27)
      {

        goto LABEL_751;
      }
    }

    __break(1u);
    goto LABEL_762;
  }

  v28 = 0;
LABEL_751:
  v45 = v14 + v49 + v50 + v16 + v48 + v47;
  result = v45 + v28;
  if (__OFADD__(v45, v28))
  {
    goto LABEL_765;
  }

  return result;
}

uint64_t sub_18211CE54(uint64_t result)
{
  if (result >= 8)
  {
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      result -= 8;
      return result;
    }

    if (result > 12237311)
    {
      if (result > 12237316)
      {
        if (result == 12237317)
        {
          return 27;
        }

        if (result == 12237318)
        {
          return 28;
        }
      }

      else
      {
        if (result == 12237312)
        {
          return 25;
        }

        if (result == 12237313)
        {
          return 26;
        }
      }

      return 0;
    }

    else
    {
      v1 = result - 16;
      result = 8;
      switch(v1)
      {
        case 0:
          return result;
        case 1:
          result = 9;
          break;
        case 2:
          result = 10;
          break;
        case 3:
          result = 11;
          break;
        case 4:
          result = 12;
          break;
        case 5:
          result = 13;
          break;
        case 6:
          result = 14;
          break;
        case 7:
          result = 15;
          break;
        case 8:
          result = 16;
          break;
        case 9:
          result = 17;
          break;
        case 10:
          result = 18;
          break;
        case 11:
          result = 19;
          break;
        case 12:
          result = 20;
          break;
        case 13:
          result = 21;
          break;
        case 14:
          result = 22;
          break;
        case 32:
          result = 0;
          break;
        case 33:
          result = 1;
          break;
        case 156:
          result = 24;
          break;
        case 159:
          result = 23;
          break;
        default:
          return 0;
      }
    }
  }

  return result;
}

double sub_18211CFE4@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v18 = 0;
  *&v19 = 0;
  BYTE8(v19) = 2;
  *v20 = 0;
  v20[8] = 1;
  *&v20[16] = 0;
  v20[24] = 1;
  BYTE9(v19) = a2;
  sub_1820D939C(a1, 1, &v18, &v15);
  if (v16 == 1 && v15 != 0)
  {
    v15 = 0;
    v16 = 0;
    v8 = 82;
    v17 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v20[25] = 0;
  v10 = v18;
  if (v18)
  {
    v15 = v18;
    v16 = 0;
    v8 = 80;
    v17 = 80;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    goto LABEL_8;
  }

  v12 = sub_182105B54();
  if (!v4)
  {
    v14 = *v20;
    *a4 = v19;
    a4[1] = v14;
    result = *&v20[10];
    *(a4 + 26) = *&v20[10];
    return result;
  }

  v10 = v12;
  v8 = v13;
LABEL_9:
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_18211D110(__int128 *a1)
{
  v7 = 0;
  sub_1820D939C(a1, 1, &v7, &v4);
  if (v5 != 1 || v4 == 0)
  {
    if (v7 == 1)
    {
      return 1;
    }

    else
    {
      v4 = v7;
      v5 = 0;
      v6 = 80;
      v3 = v7;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }
}

__n128 sub_18211D1E8@<Q0>(__int128 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v35.n128_u64[0] = 2;
  v35.n128_u8[8] = 2;
  v36.n128_u64[0] = 0;
  v36.n128_u8[8] = 1;
  v37 = 0uLL;
  v38 = MEMORY[0x1E69E7CC0];
  v39 = 1;
  v35.n128_u8[9] = a2;
  v34 = 0;
  v33 = 0;
  sub_1820D9BAC(a1, 1, &v34, &v35, &v33, &v31);
  if (v32 != 1 || !v31)
  {
    v40[2] = v37;
    v40[3] = v38;
    v41 = v39;
    v40[0] = v35;
    v40[1] = v36;
    v11 = sub_18210492C(v34);
    if (v4)
    {
      v9 = v11;
      v10 = v12;
      v8 = v13;
      goto LABEL_8;
    }

    v14 = v33;
    if (v33 > 0x400)
    {
      sub_182AD3BA8();

      v21.n128_u64[0] = v14;
      v15 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v15);

      v9 = 0xD000000000000015;
      v10 = 0x8000000182BDE420;
      v8 = 81;
      v27.n128_u8[0] = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v17 = sub_182AD3428();
    v18 = v17;
    v17[2] = v14 + 1;
    v17[4] = 0;
    v17[5] = 0;
    if (v14)
    {
      bzero(v17 + 6, 16 * v14);
    }

    sub_18201A4B4(v40);
    v38.n128_u64[0] = v18;
    sub_1820DA3F8(a1, 1, &v35, &v26);
    if (v26.n128_u8[8] != 1 || !v26.n128_u64[0])
    {
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v21 = v35;
      v22 = v36;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v26 = v35;
      v27 = v36;
      sub_18206ACD0(&v21, v20);
      sub_18201A4B4(&v26);
      v19 = v24;
      a4[2] = v23;
      a4[3] = v19;
      a4[4].n128_u8[0] = v25;
      result = v22;
      *a4 = v21;
      a4[1] = result;
      return result;
    }
  }

  v26 = 0uLL;
  v8 = 82;
  v27.n128_u8[0] = 82;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  v9 = 0;
  v10 = 0;
LABEL_8:
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v26 = v35;
  v27 = v36;
  sub_18201A4B4(&v26);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

double sub_18211D4B0@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v34 = 3;
  BYTE8(v34) = 2;
  v35 = 0uLL;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = 0uLL;
  BYTE9(v34) = a2;
  v33 = 0;
  v32 = 0;
  sub_1820DABF0(a1, 1, &v33, &v34, &v32, &v30);
  if (v31 != 1 || !v30)
  {
    v38[0] = v34;
    v38[1] = v35;
    v38[2] = v36;
    v38[3] = v37;
    v11 = sub_182104B78(v33);
    if (v4)
    {
      v9 = v11;
      v10 = v12;
      v8 = v13;
      goto LABEL_8;
    }

    v14 = v32;
    if (v32 > 0x400)
    {
      sub_182AD3BA8();

      *(&v26 + 1) = 0x8000000182BDE420;
      *&v22 = v14;
      v15 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v15);

      v10 = 0x8000000182BDE420;
      v9 = 0xD000000000000015;
      v8 = 81;
      LOBYTE(v27) = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v17 = sub_182AD3428();
    v18 = v17;
    v17[2] = v14 + 1;
    v17[4] = 0;
    v17[5] = 0;
    if (v14)
    {
      bzero(v17 + 6, 16 * v14);
    }

    sub_1821230F0(v38);
    *&v36 = v18;
    sub_1820DB43C(a1, 1, &v34, &v26);
    if (BYTE8(v26) != 1 || !v26)
    {
      v22 = v34;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      sub_182123120(&v22, &v21);
      sub_1821230F0(&v26);
      v19 = v23;
      *a4 = v22;
      a4[1] = v19;
      result = *&v24;
      v20 = v25;
      a4[2] = v24;
      a4[3] = v20;
      return result;
    }
  }

  v26 = 0uLL;
  v8 = 82;
  LOBYTE(v27) = 82;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  v9 = 0;
  v10 = 0;
LABEL_8:
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  sub_1821230F0(&v26);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_18211D728@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  *&v25 = 4;
  BYTE8(v25) = 2;
  v27 = 0;
  v26 = 0uLL;
  sub_1820DBC34(a1, 1, &v24, &v25, &v21);
  v28 = v25;
  v29 = v26;
  v8 = v27;
  v30 = v27;
  v9 = v25;
  v10 = BYTE8(v25);
  if (v22 == 1 && v21)
  {
    v21 = 0;
    v22 = 0;
    v11 = 82;
    v23 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    result = 0;
    v13 = 0;
  }

  else
  {
    v20 = v26;
    result = sub_182104DC4(v24);
    if (!v4)
    {
      v15 = *a2;
      if (*a2)
      {
        v16 = *(v15 + 16);
        if (v16)
        {
          result = sub_181A41ED0(17);
          if (v17)
          {
            v16 = *(*(v15 + 56) + 8 * result);
          }

          else
          {
            v16 = 0;
          }
        }

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          return result;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *a2;
        result = sub_182258BF8(v18, 0x11u, isUniquelyReferenced_nonNull_native);
        *a2 = v21;
      }

      *a4 = v9;
      *(a4 + 8) = v10;
      *(a4 + 16) = v20;
      *(a4 + 32) = v8;
      return result;
    }

    v11 = v14;
  }

  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v11;
  return result;
}

uint64_t sub_18211D8B0(__int128 *a1, unsigned __int8 a2, uint64_t *a3)
{
  v17 = 6;
  v18 = 2;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v19 = a2;
  v22 = 0;
  sub_1820DC49C(a1, 1, &v22, &v17, &v16, &v13);
  if (v14 != 1 || v13 == 0)
  {
    v11 = v17;
    v6 = v18;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = sub_182121D3C(v22, v17, v18);
    if (!v3)
    {

      sub_182109CF0(1uLL, a3, v11, v6 | (v7 << 8), v8, v9);

      return v11;
    }

    v11 = v10;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v11 = 0;
  }

  return v11;
}

unint64_t sub_18211DA08(__int128 *a1)
{
  v11 = 7;
  v12 = 2;
  v13 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  sub_1820DCCDC(a1, 1, &v10, &v9, &v11, &v6);
  if (v7 != 1 || v6 == 0)
  {
    v4 = v11;
    v3 = sub_182121D3C(v10, v11, v12);
    if (!v1)
    {
      return v4;
    }

    v4 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  return v4;
}

uint64_t sub_18211DB08@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = 0;
  v30 = 0;
  v31 = 0uLL;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = 0;
  v34 = 0;
  result = sub_1820DD528(a1, 1, &v34, &v29, &v28, &v25);
  if (v26 == 1 && v25 != 0)
  {
    v25 = 0;
    v26 = 0;
    v12 = 82;
    v27 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v13 = 0;
LABEL_12:

    *a3 = v13;
    *(a3 + 8) = 0;
    *(a3 + 16) = v12;
    return result;
  }

  v13 = v34;
  if ((v34 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    v25 = v34;
    v26 = 0;
    v12 = 80;
    v27 = 80;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      result = sub_181A41ED0(13);
      if (v11)
      {
        v10 = *(*(v9 + 56) + 8 * result);
      }

      else
      {
        v10 = 0;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a2;
    result = sub_182258BF8(v15, 0xDu, isUniquelyReferenced_nonNull_native);
    v17 = v25;
    *a2 = v25;
    v14 = v32;
    if (v17)
    {
      v18 = *(v32 + 16);
      v19 = *(v17 + 16);
      if (v19)
      {
        result = sub_181A41ED0(14);
        if (v20)
        {
          v19 = *(*(v17 + 56) + 8 * result);
        }

        else
        {
          v19 = 0;
        }
      }

      v21 = __OFADD__(v19, v18);
      v22 = v19 + v18;
      if (!v21)
      {
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v25 = *a2;
        result = sub_182258BF8(v22, 0xEu, v23);
        *a2 = v25;
        goto LABEL_23;
      }

LABEL_26:
      __break(1u);
      return result;
    }
  }

  else
  {
    v14 = v32;
  }

LABEL_23:
  v24 = v31;
  *a4 = v13 - 8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v24;
  *(a4 + 32) = v14;
  *(a4 + 40) = v13 & 1;
  return result;
}

unint64_t sub_18211DD10(__int128 *a1)
{
  v8 = 9;
  v9 = 2;
  v10 = 0;
  v11 = 0;
  sub_1820DC45C(a1, 1, &v11, &v8, &v5);
  v2 = v8;
  if (v6 == 1 && v5)
  {
    v5 = 0;
    v6 = 0;
    v7 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    v3 = sub_182105240(v11, v8, v9);
    if (v1)
    {
      return v3;
    }
  }

  return v2;
}

uint64_t sub_18211DE04(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, unint64_t *))
{
  v10 = 0;
  v11 = a2;
  v12 = 2;
  v13 = 0;
  a3(&v7, a1, 1, &v10, &v11);
  if (v8 != 1 || v7 == 0)
  {
    v5 = v11;
    result = sub_182105010(v10, v11, v12);
    if (!v3)
    {
      return v5;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  return result;
}

uint64_t sub_18211DEE4(uint64_t a1, uint64_t *a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, unint64_t *), uint64_t a5)
{
  v18 = a3;
  v19 = 2;
  v20 = 0;
  v21 = 0;
  a4(&v15, a1, 1, &v21, &v18);
  v8 = v18;
  if (v16 == 1 && v15)
  {
    v15 = 0;
    v16 = 0;
    v17 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  result = sub_182105240(v21, v18, v19);
  if (v5)
  {
    return result;
  }

  v10 = *a2;
  if (!*a2)
  {
    return v8;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    result = sub_181A41ED0(a5);
    if (v12)
    {
      v11 = *(*(v10 + 56) + 8 * result);
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a2;
    sub_182258BF8(v13, a5, isUniquelyReferenced_nonNull_native);
    *a2 = v15;
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_18211E064(uint64_t a1, uint64_t *a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, unint64_t *), uint64_t a5)
{
  v19 = 0;
  v20 = a3;
  v21 = 2;
  v22 = 0;
  a4(&v16, a1, 1, &v19, &v20);
  if (v17 == 1 && v16 != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }

  v9 = v20;
  result = sub_182105010(v19, v20, v21);
  if (!v5)
  {
    v11 = *a2;
    if (!*a2)
    {
      return v9;
    }

    v12 = *(v11 + 16);
    if (v12)
    {
      result = sub_181A41ED0(a5);
      if (v13)
      {
        v12 = *(*(v11 + 56) + 8 * result);
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a2;
      sub_182258BF8(v14, a5, isUniquelyReferenced_nonNull_native);
      *a2 = v16;
      return v9;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18211E1C8(uint64_t result)
{
  if (result > 9)
  {
    if (result <= 11)
    {
      if (result == 10)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    switch(result)
    {
      case 12:
        return 13;
      case 13:
        return 14;
      case 16:
        return 10;
    }
  }

  else if (result < 0xA)
  {
    return result;
  }

  v1 = 15;
  if (result != 47617)
  {
    v1 = 0;
  }

  if ((result & 0xFFFFFFFFFFFFFF00) != 0x100)
  {
    return v1;
  }

  result -= 256;
  return result;
}

uint64_t sub_18211E2A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = v4;
  v102 = a2;
  v103 = a4;
  v106 = sub_182AD27E8();
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v101 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v101 - v21;
  v131 = 0;
  v132 = 20;
  v133 = 2;
  v134 = 0;
  v135 = 1;
  v138 = 0;
  v139 = 0xE000000000000000;
  v140 = 0;
  v129 = 0;
  v130 = 0;
  v136 = 20;
  v137 = 2;
  v111[2] = &v140;
  v111[3] = &v130;
  v111[4] = &v131;
  v111[5] = &v129;
  v111[6] = &v132;
  if (*(a1 + 24) == 2)
  {
    v101 = v17;
    v108 = a3;
    v105 = v4;
    v23 = swift_projectBox();
    sub_181AB5D28(v23, v22, &qword_1EA8398E0);
    v24 = sub_182AD2868();
    v25 = *(*(v24 - 8) + 8);
    v25(v22, v24);
    v26 = *(a1 + 176);
    v125 = *(a1 + 160);
    v126 = v26;
    v127 = *(a1 + 192);
    v128 = *(a1 + 208);
    v27 = *(a1 + 112);
    v121 = *(a1 + 96);
    v122 = v27;
    v28 = *(a1 + 144);
    v123 = *(a1 + 128);
    v124 = v28;
    v29 = *(a1 + 48);
    v117 = *(a1 + 32);
    v118 = v29;
    v30 = *(a1 + 80);
    v119 = *(a1 + 64);
    v120 = v30;
    v31 = *(a1 + 16);
    v115 = *a1;
    v116 = v31;
    sub_1821438A8(v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v45 = v11;
      v46 = v107;
      sub_182022420(v45, v107);
      v47 = v101;
      sub_181AB5D28(v46, v101, &unk_1EA83A980);
      v48 = sub_182AD27F8();
      v25(v47, v24);
      v49 = *(v48 + 16);

      if (v49)
      {
        v50 = v24;
        if (v49 != 1)
        {
          v114 = xmmword_182AE7580;
          v60 = v101;
          sub_181AB5D28(v46, v101, &unk_1EA83A980);
          v61 = sub_182AD27F8();
          v25(v60, v50);
          v62 = *(v61 + 16);
          if (v62)
          {
            v63 = (*(v109 + 80) + 32) & ~*(v109 + 80);
            v104 = v61;
            v64 = v61 + v63;
            v65 = *(v109 + 72);
            v109 += 16;
            v110 = v65;
            v66 = v105;
            v67 = v106;
            do
            {
              *(&v116 + 1) = v67;
              *&v117 = MEMORY[0x1E6969D40];
              boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v115);
              (*v109)(boxed_opaque_existential_0Tm, v64, v67);
              __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
              sub_182AD1DC8();
              v69 = v112;
              v70 = v113;
              __swift_destroy_boxed_opaque_existential_1(&v115);
              sub_182AD2178();
              sub_181C1F2E4(v69, v70);
              v64 += v110;
              --v62;
            }

            while (v62);
            v105 = v66;

            v46 = v107;
            a3 = v108;
          }

          else
          {

            a3 = v108;
          }

          v99 = v114;
          MEMORY[0x1EEE9AC00](v71);
          *(&v101 - 4) = a1;
          *(&v101 - 24) = 1;
          *(&v101 - 2) = sub_182123168;
          *(&v101 - 1) = v111;
          v100 = v105;
          sub_1820E375C(sub_182124410, (&v101 - 6), v99, *(&v99 + 1));
          v6 = v100;
          sub_181F49A88(v46, &unk_1EA83A980);
          sub_181C1F2E4(v99, *(&v99 + 1));
          goto LABEL_34;
        }

        v51 = v110;
        sub_181AB5D28(v46, v110, &unk_1EA83A980);
        v52 = sub_182AD27F8();
        v25(v51, v50);
        v53 = v106;
        if (!*(v52 + 16))
        {
LABEL_52:

          __break(1u);
          return result;
        }

        v54 = v109;
        v55 = v104;
        (*(v109 + 16))(v104, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v106);

        MEMORY[0x1EEE9AC00](v56);
        *(&v101 - 4) = a1;
        *(&v101 - 24) = 1;
        *(&v101 - 2) = sub_182123168;
        *(&v101 - 1) = v111;
        v57 = v105;
        sub_182AD27D8();
        v6 = v57;
        sub_181F49A88(v46, &unk_1EA83A980);
        (*(v54 + 8))(v55, v53);
      }

      else
      {
        sub_181F49A88(v46, &unk_1EA83A980);
        v112 = 1;
        LOBYTE(v113) = 1;
        v6 = v105;
      }

      a3 = v108;
      goto LABEL_34;
    }

    sub_181F49A88(v11, &qword_1EA839BA8);
    v6 = v105;
    a3 = v108;
  }

  v32 = *(a1 + 176);
  v125 = *(a1 + 160);
  v126 = v32;
  v127 = *(a1 + 192);
  v128 = *(a1 + 208);
  v33 = *(a1 + 112);
  v121 = *(a1 + 96);
  v122 = v33;
  v34 = *(a1 + 144);
  v123 = *(a1 + 128);
  v124 = v34;
  v35 = *(a1 + 48);
  v117 = *(a1 + 32);
  v118 = v35;
  v36 = *(a1 + 80);
  v119 = *(a1 + 64);
  v120 = v36;
  v37 = *(a1 + 16);
  v115 = *a1;
  v116 = v37;
  v38 = Frame.unclaimedBytes.getter();
  if (v40)
  {
    v112 = 1;
    LOBYTE(v113) = 1;
    goto LABEL_34;
  }

  if (v38)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  *&v115 = v38;
  *(&v115 + 1) = v41;
  v116 = 0uLL;
  LOBYTE(v117) = 1;
  v140 = sub_1820E2CC0();
  v130 = sub_1820E2CC0();
  v131 = sub_1820E2CC0();
  v42 = sub_1820E2CC0();
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  Deserializer.fixedLengthUTF8(_:byteCount:)(&v138, v42, &v114);
  v43 = *(&v116 + 1);
  if (v117 != 1)
  {
    v58 = v6;
    v59 = 0;
LABEL_30:
    v73 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v116, 0, 1);
    if (!v73)
    {
      v43 = 2;
    }

    v44 = !v73 || v59;
    v6 = v58;
    goto LABEL_33;
  }

  if (!*(&v116 + 1))
  {
    if (v115)
    {
      v72 = *(&v115 + 1) - v115;
    }

    else
    {
      v72 = 0;
    }

    v43 = v72 - v116;
    if (!__OFSUB__(v72, v116))
    {
      if ((v43 & 0x8000000000000000) == 0)
      {
        v58 = v6;
        v59 = v72 == v116;
        goto LABEL_30;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v44 = 1;
LABEL_33:
  v112 = v43;
  LOBYTE(v113) = v44 & 1;
LABEL_34:
  if (v113 == 1 && v112)
  {
    v115 = 0uLL;
    v74 = 82;
    LOBYTE(v116) = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = v132;
    v78 = v133;
    v80 = v138;
    v79 = v139;
    v81 = sub_182121D3C(v140, v132, v133);
    if (v6)
    {
      v75 = v81;
      v76 = v82;
      v74 = v83;
    }

    else
    {
      v108 = a3;
      v110 = 0;
      v84 = v130;
      v85 = sub_18211E1C8(v130);
      if ((v86 & 0x100) != 0)
      {
        *&v115 = 0;
        *(&v115 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        v96 = 0x8000000182BDE460;
        v97 = 0xD000000000000020;
      }

      else
      {
        v87 = v85;
        v88 = v86;
        v84 = v131;
        v89 = sub_18211CE54(v131);
        if (v90 != -1)
        {
          v91 = v90;
          v92 = v88 & 1;
          v93 = v89;
          result = sub_18210BECC(v87, v92, 1, v102);
          LOBYTE(v115) = v92;
          v95 = v103;
          *v103 = v77;
          *(v95 + 8) = v78;
          v95[2] = v87;
          *(v95 + 24) = v92;
          v95[4] = v93;
          *(v95 + 40) = v91;
          v95[6] = v80;
          v95[7] = v79;
          return result;
        }

        *&v115 = 0;
        *(&v115 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        v96 = 0x8000000182BDE490;
        v97 = 0xD000000000000014;
      }

      *&v115 = v97;
      *(&v115 + 1) = v96;
      *&v114 = v84;
      v98 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v98);

      v76 = *(&v115 + 1);
      v75 = v115;
      v74 = 81;
      LOBYTE(v116) = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      a3 = v108;
    }
  }

  *a3 = v75;
  *(a3 + 8) = v76;
  *(a3 + 16) = v74;
  return result;
}

uint64_t sub_18211ED30@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = v4;
  v96 = a2;
  v97 = a4;
  v99 = sub_182AD27E8();
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v95 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v93 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v93 - v21;
  v122 = 0;
  v123 = 21;
  v124 = 2;
  v125 = 0;
  v126 = 1;
  v127 = 0;
  v128 = 0xE000000000000000;
  v129 = 0;
  v121 = 0;
  v103[2] = &v129;
  v103[3] = &v122;
  v103[4] = &v121;
  v103[5] = &v123;
  if (*(a1 + 24) == 2)
  {
    v94 = a3;
    v98 = v4;
    v23 = swift_projectBox();
    sub_181AB5D28(v23, v22, &qword_1EA8398E0);
    v24 = sub_182AD2868();
    v93 = *(*(v24 - 8) + 8);
    v93(v22, v24);
    v25 = a1[11];
    v117 = a1[10];
    v118 = v25;
    v119 = a1[12];
    v120 = *(a1 + 208);
    v26 = a1[7];
    v113 = a1[6];
    v114 = v26;
    v27 = a1[9];
    v115 = a1[8];
    v116 = v27;
    v28 = a1[3];
    v109 = a1[2];
    v110 = v28;
    v29 = a1[5];
    v111 = a1[4];
    v112 = v29;
    v30 = a1[1];
    v107 = *a1;
    v108 = v30;
    sub_1821438A8(v11);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v45 = v100;
      sub_182022420(v11, v100);
      v46 = v45;
      sub_181AB5D28(v45, v17, &unk_1EA83A980);
      v47 = sub_182AD27F8();
      v93(v17, v24);
      v48 = *(v47 + 16);

      if (v48)
      {
        v49 = v24;
        if (v48 != 1)
        {
          v106 = xmmword_182AE7580;
          sub_181AB5D28(v46, v17, &unk_1EA83A980);
          v59 = sub_182AD27F8();
          v93(v17, v24);
          v60 = *(v59 + 16);
          if (v60)
          {
            v61 = (*(v101 + 80) + 32) & ~*(v101 + 80);
            v95 = v59;
            v62 = v59 + v61;
            v63 = *(v101 + 72);
            v101 += 16;
            v102 = v63;
            v64 = v98;
            v65 = v99;
            do
            {
              *(&v108 + 1) = v65;
              *&v109 = MEMORY[0x1E6969D40];
              boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v107);
              (*v101)(boxed_opaque_existential_0Tm, v62, v65);
              __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
              sub_182AD1DC8();
              v67 = v104;
              v68 = v105;
              __swift_destroy_boxed_opaque_existential_1(&v107);
              sub_182AD2178();
              sub_181C1F2E4(v67, v68);
              v62 += v102;
              --v60;
            }

            while (v60);
            v98 = v64;

            a3 = v94;
            v46 = v100;
          }

          else
          {

            a3 = v94;
          }

          v91 = v106;
          MEMORY[0x1EEE9AC00](v69);
          *(&v93 - 4) = a1;
          *(&v93 - 24) = 1;
          *(&v93 - 2) = sub_182123178;
          *(&v93 - 1) = v103;
          v92 = v98;
          sub_1820E375C(sub_182124410, (&v93 - 6), v91, *(&v91 + 1));
          v40 = v92;
          sub_181F49A88(v46, &unk_1EA83A980);
          sub_181C1F2E4(v91, *(&v91 + 1));
          goto LABEL_34;
        }

        v50 = v102;
        sub_181AB5D28(v46, v102, &unk_1EA83A980);
        v51 = sub_182AD27F8();
        v93(v50, v49);
        v52 = v99;
        if (!*(v51 + 16))
        {
LABEL_50:

          __break(1u);
          return result;
        }

        v53 = v101;
        v54 = v95;
        (*(v101 + 16))(v95, v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v99);

        MEMORY[0x1EEE9AC00](v55);
        *(&v93 - 4) = a1;
        *(&v93 - 24) = 1;
        *(&v93 - 2) = sub_182123178;
        *(&v93 - 1) = v103;
        v56 = v98;
        sub_182AD27D8();
        v40 = v56;
        sub_181F49A88(v46, &unk_1EA83A980);
        (*(v53 + 8))(v54, v52);
      }

      else
      {
        sub_181F49A88(v46, &unk_1EA83A980);
        v104 = 1;
        LOBYTE(v105) = 1;
        v40 = v98;
      }

      a3 = v94;
      goto LABEL_34;
    }

    sub_181F49A88(v11, &qword_1EA839BA8);
    v6 = v98;
    a3 = v94;
  }

  v31 = a1[11];
  v117 = a1[10];
  v118 = v31;
  v119 = a1[12];
  v120 = *(a1 + 208);
  v32 = a1[7];
  v113 = a1[6];
  v114 = v32;
  v33 = a1[9];
  v115 = a1[8];
  v116 = v33;
  v34 = a1[3];
  v109 = a1[2];
  v110 = v34;
  v35 = a1[5];
  v111 = a1[4];
  v112 = v35;
  v36 = a1[1];
  v107 = *a1;
  v108 = v36;
  v37 = Frame.unclaimedBytes.getter();
  if (v39)
  {
    v40 = v6;
    v104 = 1;
    LOBYTE(v105) = 1;
    goto LABEL_34;
  }

  if (v37)
  {
    v41 = v38;
  }

  else
  {
    v41 = 0;
  }

  *&v107 = v37;
  *(&v107 + 1) = v41;
  v108 = 0uLL;
  LOBYTE(v109) = 1;
  v129 = sub_1820E2CC0();
  v122 = sub_1820E2CC0();
  v42 = sub_1820E2CC0();
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v40 = v6;
  Deserializer.fixedLengthUTF8(_:byteCount:)(&v127, v42, &v106);
  v43 = *(&v108 + 1);
  if (v109 != 1)
  {
    v57 = v40;
    v58 = 0;
LABEL_30:
    v71 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v108, 0, 1);
    if (!v71)
    {
      v43 = 2;
    }

    v44 = !v71 || v58;
    v40 = v57;
    goto LABEL_33;
  }

  if (!*(&v108 + 1))
  {
    if (v107)
    {
      v70 = *(&v107 + 1) - v107;
    }

    else
    {
      v70 = 0;
    }

    v43 = v70 - v108;
    if (!__OFSUB__(v70, v108))
    {
      if ((v43 & 0x8000000000000000) == 0)
      {
        v57 = v40;
        v58 = v70 == v108;
        goto LABEL_30;
      }

      goto LABEL_49;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = 1;
LABEL_33:
  v104 = v43;
  LOBYTE(v105) = v44 & 1;
LABEL_34:
  if (v105 == 1 && v104)
  {
    v107 = 0uLL;
    v72 = 82;
    LOBYTE(v108) = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v75 = a3;
    v76 = v123;
    v77 = v124;
    v78 = v127;
    v79 = v128;
    v80 = sub_182121D3C(v129, v123, v124);
    if (v40)
    {
      v73 = v80;
      v74 = v81;
      v72 = v82;
    }

    else
    {
      v83 = v122;
      v84 = sub_18211E1C8(v122);
      if ((v85 & 0x100) == 0)
      {
        v86 = v85 & 1;
        v87 = v84;
        result = sub_18210BECC(v84, v85 & 1, 1, v96);
        v89 = v97;
        *v97 = v76;
        *(v89 + 8) = v77;
        v89[2] = v87;
        *(v89 + 24) = v86;
        v89[4] = v78;
        v89[5] = v79;
        return result;
      }

      *&v107 = 0;
      *(&v107 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v107 = 0xD000000000000020;
      *(&v107 + 1) = 0x8000000182BDE460;
      *&v106 = v83;
      v90 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v90);

      v74 = *(&v107 + 1);
      v73 = v107;
      v72 = 81;
      LOBYTE(v108) = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    a3 = v75;
  }

  *a3 = v73;
  *(a3 + 8) = v74;
  *(a3 + 16) = v72;
  return result;
}

uint64_t sub_18211F748(__int128 *a1)
{
  v7 = 0;
  sub_1820D939C(a1, 1, &v7, &v4);
  if (v5 != 1 || v4 == 0)
  {
    if (v7 == 30)
    {
      return 22;
    }

    else
    {
      v4 = v7;
      v5 = 0;
      v6 = 80;
      v3 = v7;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }
}

uint64_t sub_18211F818@<X0>(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v114 = a3;
  v115 = a2;
  v7 = sub_182AD27E8();
  v111 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v110 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v104 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v104 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v112 = v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v104 - v21;
  v143 = 0;
  v144 = 1;
  v145 = 0;
  v146 = 1;
  v147 = MEMORY[0x1E69E7CC0];
  v148 = 0;
  v139 = 0;
  v140 = 0;
  v23 = sub_1820D939C(a1, 1, &v148, &v137);
  if (v138 == 1 && v137)
  {
    goto LABEL_3;
  }

  v109 = a5;
  v26 = v148;
  if (v148 != 49)
  {
    if (v148 != 48)
    {
      v121 = v148;
      v24 = 80;
      LOBYTE(v122) = 80;
      sub_181F5F494();
      result = swift_willThrowTypedImpl();
      goto LABEL_15;
    }

    v108 = 0;
    v141 = 0;
    v142 = 1;
    v136 = 0;
    goto LABEL_7;
  }

  v141 = 1;
  v108 = 1;
  v142 = 1;
  v136 = 0;
  v23 = sub_1820D939C(a1, 1, &v136, &v121);
  v137 = v121;
  v138 = BYTE8(v121);
  if (BYTE8(v121) != 1)
  {
LABEL_7:
    v27 = v109;
    goto LABEL_8;
  }

  v27 = v109;
  if (v121)
  {
    goto LABEL_3;
  }

LABEL_8:
  v135 = 0;
  if ((v115 & 1) == 0 && (v114 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 24) == 5)
  {
    v23 = nw_frame_unclaimed_length(*a1);
    v106 = v23;
    goto LABEL_24;
  }

  v35 = *(a1 + 9);
  if (v35)
  {
    v36 = *(a1 + 7);
    v37 = *(a1 + 8);
    v38 = __OFADD__(v36, v37);
    v39 = v37 + v36;
    if (v38)
    {
      __break(1u);
    }

    else
    {
      v38 = __OFSUB__(v35, v39);
      v40 = v35 - v39;
      if (!v38)
      {
        v106 = v40;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v106 = 0;
LABEL_24:
  v107 = v104;
  MEMORY[0x1EEE9AC00](v23);
  LOBYTE(v104[-4]) = v115 & 1;
  v104[-3] = &v139;
  LOBYTE(v104[-2]) = v114 & 1;
  v104[-1] = &v140;
  if (*(a1 + 24) == 2)
  {
    v104[0] = &v104[-6];
    v41 = swift_projectBox();
    sub_181AB5D28(v41, v22, &qword_1EA8398E0);
    v42 = sub_182AD2868();
    v43 = *(v42 - 8);
    v44 = *(v43 + 8);
    v104[1] = v43 + 8;
    v105 = v44;
    v44(v22, v42);
    v45 = a1[11];
    v131 = a1[10];
    v132 = v45;
    v133 = a1[12];
    v134 = *(a1 + 208);
    v46 = a1[7];
    v127 = a1[6];
    v128 = v46;
    v47 = a1[9];
    v129 = a1[8];
    v130 = v47;
    v48 = a1[3];
    v123 = a1[2];
    v124 = v48;
    v49 = a1[5];
    v125 = a1[4];
    v126 = v49;
    v50 = a1[1];
    v121 = *a1;
    v122 = v50;
    sub_1821438A8(v11);
    if ((*(v113 + 48))(v11, 1, v12) != 1)
    {
      v62 = v112;
      sub_182022420(v11, v112);
      sub_181AB5D28(v62, v17, &unk_1EA83A980);
      v63 = sub_182AD27F8();
      v113 = v42;
      v105(v17, v42);
      v11 = *(v63 + 16);

      if (!v11)
      {
        sub_181F49A88(v62, &unk_1EA83A980);
        v118 = 1;
        LOBYTE(v119) = 1;
        v27 = v109;
        goto LABEL_59;
      }

      v27 = v109;
      if (v11 != 1)
      {
        v120 = xmmword_182AE7580;
        sub_181AB5D28(v62, v17, &unk_1EA83A980);
        v71 = sub_182AD27F8();
        v105(v17, v113);
        v72 = *(v71 + 16);
        if (v72)
        {
          v73 = *(v111 + 80);
          v110 = v71;
          v74 = v71 + ((v73 + 32) & ~v73);
          v113 = *(v111 + 72);
          v75 = (v111 + 16);
          do
          {
            *(&v122 + 1) = v7;
            *&v123 = MEMORY[0x1E6969D40];
            boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v121);
            (*v75)(boxed_opaque_existential_0Tm, v74, v7);
            __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
            v77 = v116;
            sub_182AD1DC8();
            v116 = v77;
            v79 = v118;
            v78 = v119;
            __swift_destroy_boxed_opaque_existential_1(&v121);
            sub_182AD2178();
            sub_181C1F2E4(v79, v78);
            v74 += v113;
            --v72;
          }

          while (v72);

          v27 = v109;
        }

        else
        {
        }

        v17 = v104;
        v11 = *(&v120 + 1);
        v101 = v120;
        MEMORY[0x1EEE9AC00](v80);
        v104[-4] = a1;
        LOBYTE(v104[-3]) = 1;
        v102 = v104[0];
        v104[-2] = sub_182123184;
        v104[-1] = v102;
        v103 = v116;
        sub_1820E375C(sub_182124410, &v104[-6], v101, v11);
        v116 = v103;
        sub_181F49A88(v112, &unk_1EA83A980);
        sub_181C1F2E4(v101, v11);
LABEL_59:
        v137 = v118;
        v138 = v119;
        if (v119 != 1 || !v118)
        {
          if (*(a1 + 24) == 5)
          {
            v83 = nw_frame_unclaimed_length(*a1);
          }

          else
          {
            v84 = *(a1 + 9);
            if (!v84)
            {
              v88 = v106;
              if (v106 <= 0)
              {
                goto LABEL_67;
              }

              v83 = 0;
LABEL_73:
              v17 = v88 - v83;
              if (!__OFSUB__(v88, v83))
              {
                v135 = v88 - v83;
                if ((v115 & 1) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              goto LABEL_90;
            }

            v85 = *(a1 + 7);
            v86 = *(a1 + 8);
            v38 = __OFADD__(v85, v86);
            v87 = v86 + v85;
            if (v38)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            v38 = __OFSUB__(v84, v87);
            v83 = v84 - v87;
            if (v38)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }
          }

          v88 = v106;
          if (v83 >= v106)
          {
LABEL_67:
            if ((v115 & 1) == 0)
            {
              if ((v114 & 1) == 0)
              {
                goto LABEL_10;
              }

              v17 = 0;
              goto LABEL_77;
            }

            v17 = 0;
LABEL_75:
            v143 = v139;
            v144 = 0;
LABEL_76:
            if ((v114 & 1) == 0)
            {
LABEL_78:
              if (v108)
              {
                if (v17 >= 1)
                {
                  v89 = v136;
                  if (v136 < v17)
                  {
                    *&v121 = 0;
                    *(&v121 + 1) = 0xE000000000000000;
                    sub_182AD3BA8();
                    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BDE4E0);
                    *&v120 = v89;
                    v90 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v90);

                    MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDE500);
                    *&v120 = v17;
                    v91 = sub_182AD41B8();
                    MEMORY[0x1865D9CA0](v91);

                    v11 = *(&v121 + 1);
                    v17 = v121;
                    if (qword_1EA837248 == -1)
                    {
LABEL_82:
                      v92 = sub_182AD2698();
                      __swift_project_value_buffer(v92, qword_1EA843418);

                      v93 = sub_182AD2678();
                      v94 = sub_182AD38B8();

                      if (os_log_type_enabled(v93, v94))
                      {
                        v95 = swift_slowAlloc();
                        v96 = swift_slowAlloc();
                        *&v121 = v96;
                        *v95 = 136315650;
                        v97 = sub_182AD3BF8();
                        v99 = sub_181C64FFC(v97, v98, &v121);

                        *(v95 + 4) = v99;
                        *(v95 + 12) = 2080;
                        *(v95 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v121);
                        *(v95 + 22) = 2080;
                        v100 = sub_181C64FFC(v17, v11, &v121);

                        *(v95 + 24) = v100;
                        _os_log_impl(&dword_181A37000, v93, v94, "%s %s %s", v95, 0x20u);
                        swift_arrayDestroy();
                        MEMORY[0x1865DF520](v96, -1, -1);
                        MEMORY[0x1865DF520](v95, -1, -1);
                      }

                      else
                      {
                      }

                      v34 = v117;
                      v121 = 0uLL;
                      v24 = 82;
                      LOBYTE(v122) = 82;
                      sub_181F5F494();
                      result = swift_willThrowTypedImpl();
                      v26 = 0;
                      goto LABEL_16;
                    }

LABEL_93:
                    swift_once();
                    goto LABEL_82;
                  }
                }
              }

LABEL_10:
              result = sub_1820DF5F4(a1, 1, &v141, &v136, &v135, &v121);
              v28 = v142;
              v29 = v143;
              v30 = v144;
              v31 = v145;
              v32 = v146;
              v33 = v147;
              *v27 = v141;
              *(v27 + 8) = v28;
              *(v27 + 16) = v29;
              *(v27 + 24) = v30;
              *(v27 + 32) = v31;
              *(v27 + 40) = v32;
              *(v27 + 48) = v33;
              return result;
            }

LABEL_77:
            v145 = v140;
            v146 = 0;
            goto LABEL_78;
          }

          goto LABEL_73;
        }

LABEL_3:
        v121 = 0uLL;
        v24 = 82;
        LOBYTE(v122) = 82;
        sub_181F5F494();
        result = swift_willThrowTypedImpl();
        v26 = 0;
LABEL_15:
        v34 = v117;
LABEL_16:
        *v34 = v26;
        *(v34 + 8) = 0;
        *(v34 + 16) = v24;
        return result;
      }

      sub_181AB5D28(v62, v14, &unk_1EA83A980);
      v64 = sub_182AD27F8();
      v105(v14, v113);
      if (*(v64 + 16))
      {
        v66 = v110;
        v65 = v111;
        (*(v111 + 16))(v110, v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v7);

        v11 = v104;
        MEMORY[0x1EEE9AC00](v67);
        v104[-4] = a1;
        LOBYTE(v104[-3]) = 1;
        v68 = v104[0];
        v104[-2] = sub_182123184;
        v104[-1] = v68;
        v69 = v116;
        sub_182AD27D8();
        v116 = v69;
        sub_181F49A88(v62, &unk_1EA83A980);
        v70 = *(v65 + 8);
        v17 = v65 + 8;
        v70(v66, v7);
        goto LABEL_59;
      }

      goto LABEL_96;
    }

    sub_181F49A88(v11, &qword_1EA839BA8);
    v27 = v109;
  }

  v51 = a1[11];
  v131 = a1[10];
  v132 = v51;
  v133 = a1[12];
  v134 = *(a1 + 208);
  v52 = a1[7];
  v127 = a1[6];
  v128 = v52;
  v53 = a1[9];
  v129 = a1[8];
  v130 = v53;
  v54 = a1[3];
  v123 = a1[2];
  v124 = v54;
  v55 = a1[5];
  v125 = a1[4];
  v126 = v55;
  v56 = a1[1];
  v121 = *a1;
  v122 = v56;
  v57 = Frame.unclaimedBytes.getter();
  if (v59)
  {
    v118 = 1;
    LOBYTE(v119) = 1;
    goto LABEL_59;
  }

  if (v57)
  {
    v60 = v58;
  }

  else
  {
    v60 = 0;
  }

  *&v121 = v57;
  *(&v121 + 1) = v60;
  v122 = 0uLL;
  LOBYTE(v123) = 1;
  if (v115)
  {
    v139 = sub_1820E2CC0();
  }

  if (v114)
  {
    v140 = sub_1820E2CC0();
  }

  v11 = *(&v122 + 1);
  if (v123 != 1)
  {
    v17 = 0;
LABEL_55:
    v82 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v122, 0, 1);
    if (!v82)
    {
      v11 = 2;
    }

    v61 = !v82 | v17;
    goto LABEL_58;
  }

  if (*(&v122 + 1))
  {
    v61 = 1;
LABEL_58:
    v118 = v11;
    LOBYTE(v119) = v61 & 1;
    goto LABEL_59;
  }

  if (v121)
  {
    v81 = *(&v121 + 1) - v121;
  }

  else
  {
    v81 = 0;
  }

  v11 = v81 - v122;
  if (__OFSUB__(v81, v122))
  {
    __break(1u);
  }

  else if ((v11 & 0x8000000000000000) == 0)
  {
    v17 = v81 == v122;
    goto LABEL_55;
  }

  __break(1u);
LABEL_96:

  __break(1u);
  return result;
}

double sub_1821205D8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = 0;
  v24 = 23;
  v25 = 2;
  v27 = 0;
  v26 = 0uLL;
  v28 = 0;
  v22 = 0;
  sub_1820DFE7C(a1, 1, &v23, &v24, &v22, &v18);
  if (v19 != 1 || v18 == 0)
  {
    v10 = sub_182105470(v23);
    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v12 = v22;
      if (v22 < 2u)
      {
        v16 = v25;
        v17 = v27;
        *a3 = v24;
        *(a3 + 8) = v16;
        result = *&v26;
        *(a3 + 16) = v26;
        *(a3 + 32) = v17;
        *(a3 + 40) = v12 == 1;
        return result;
      }

      v18 = 0;
      v19 = 0xE000000000000000;
      sub_182AD3BA8();

      v18 = 0xD000000000000016;
      v19 = 0x8000000182BDE530;
      v21 = v12;
      v13 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v13);

      v14 = v18;
      v15 = v19;
      v8 = 81;
      v20 = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v11 = v15;
      v10 = v14;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v8 = 82;
    v20 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v10 = 0;
    v11 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_182120788(__int128 *a1)
{
  v7 = 0;
  sub_1820D939C(a1, 1, &v7, &v4);
  if (v5 != 1 || v4 == 0)
  {
    if (v7 == 172)
    {
      return 24;
    }

    else
    {
      v4 = v7;
      v5 = 0;
      v6 = 80;
      v3 = v7;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return v3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 0;
  }
}

uint64_t sub_182120858@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v97 = a3;
  v91 = a4;
  v123 = sub_182AD27E8();
  v93 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v92 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v90 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v90 - v19;
  *&v119 = 25;
  BYTE8(v119) = 2;
  *&v120 = 0;
  BYTE8(v120) = 1;
  v121 = 0uLL;
  v122 = MEMORY[0x1E69E7CC0];
  BYTE9(v119) = a2;
  v117 = 0;
  v118 = 0;
  v116 = 0;
  v98[2] = &v118;
  v98[3] = &v116;
  v98[4] = &v119;
  v98[5] = &v117;
  if (*(a1 + 24) != 2)
  {
LABEL_4:
    v31 = *(a1 + 176);
    v110 = *(a1 + 160);
    v111 = v31;
    v112 = *(a1 + 192);
    v113 = *(a1 + 208);
    v32 = *(a1 + 112);
    v106 = *(a1 + 96);
    v107 = v32;
    v33 = *(a1 + 144);
    v108 = *(a1 + 128);
    v109 = v33;
    v34 = *(a1 + 48);
    v102 = *(a1 + 32);
    v103 = v34;
    v35 = *(a1 + 80);
    v104 = *(a1 + 64);
    v105 = v35;
    v36 = *(a1 + 16);
    v100 = *a1;
    v101 = v36;
    v37 = Frame.unclaimedBytes.getter();
    if (v39)
    {
LABEL_5:
      v114 = 1;
      v115 = 1;
      v40 = v97;
      goto LABEL_32;
    }

    if (v37)
    {
      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    *&v100 = v37;
    *(&v100 + 1) = v41;
    v101 = 0uLL;
    LOBYTE(v102) = 1;
    v118 = sub_1820E2CC0();
    v116 = sub_1820E2CC0();
    *&v121 = sub_1820E2CC0();
    *(&v121 + 1) = sub_1820E2CC0();
    v117 = sub_1820E2CC0();
    v42 = *(&v101 + 1);
    v40 = v97;
    if (v102)
    {
      if (*(&v101 + 1))
      {
        v43 = 1;
LABEL_31:
        v114 = v42;
        v115 = v43 & 1;
        goto LABEL_32;
      }

      if (v100)
      {
        v72 = *(&v100 + 1) - v100;
      }

      else
      {
        v72 = 0;
      }

      v42 = v72 - v101;
      if (__OFSUB__(v72, v101))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v42 < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v56 = v72 == v101;
    }

    else
    {
      v56 = 0;
    }

    v73 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v101, 0, 1);
    if (!v73)
    {
      v42 = 2;
    }

    v43 = !v73 || v56;
    goto LABEL_31;
  }

  v21 = swift_projectBox();
  sub_181AB5D28(v21, v20, &qword_1EA8398E0);
  v22 = sub_182AD2868();
  v23 = v20;
  v24 = v22;
  v90 = *(*(v22 - 8) + 8);
  v90(v23, v22);
  v25 = *(a1 + 176);
  v110 = *(a1 + 160);
  v111 = v25;
  v112 = *(a1 + 192);
  v113 = *(a1 + 208);
  v26 = *(a1 + 112);
  v106 = *(a1 + 96);
  v107 = v26;
  v27 = *(a1 + 144);
  v108 = *(a1 + 128);
  v109 = v27;
  v28 = *(a1 + 48);
  v102 = *(a1 + 32);
  v103 = v28;
  v29 = *(a1 + 80);
  v104 = *(a1 + 64);
  v105 = v29;
  v30 = *(a1 + 16);
  v100 = *a1;
  v101 = v30;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);
    goto LABEL_4;
  }

  v44 = v94;
  sub_182022420(v9, v94);
  sub_181AB5D28(v44, v15, &unk_1EA83A980);
  v45 = sub_182AD27F8();
  v46 = v90;
  v90(v15, v24);
  v47 = *(v45 + 16);

  if (!v47)
  {
    sub_181F49A88(v44, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v47 == 1)
  {
    v48 = v95;
    sub_181AB5D28(v44, v95, &unk_1EA83A980);
    v49 = sub_182AD27F8();
    v46(v48, v24);
    v40 = v97;
    v50 = v123;
    if (!*(v49 + 16))
    {
LABEL_52:

      __break(1u);
      return result;
    }

    v51 = v44;
    v52 = v92;
    v53 = v93;
    (*(v93 + 16))(v92, v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v123);

    MEMORY[0x1EEE9AC00](v54);
    *(&v90 - 4) = a1;
    *(&v90 - 24) = 1;
    *(&v90 - 2) = sub_182123198;
    *(&v90 - 1) = v98;
    v55 = v96;
    sub_182AD27D8();
    v96 = v55;
    sub_181F49A88(v51, &unk_1EA83A980);
    (*(v53 + 8))(v52, v50);
  }

  else
  {
    v99 = xmmword_182AE7580;
    sub_181AB5D28(v44, v15, &unk_1EA83A980);
    v57 = sub_182AD27F8();
    v46(v15, v24);
    v58 = v57;
    v59 = v44;
    v60 = *(v58 + 2);
    v61 = v123;
    if (v60)
    {
      v62 = *(v93 + 80);
      v92 = v58;
      v63 = &v58[(v62 + 32) & ~v62];
      v95 = *(v93 + 72);
      v64 = (v93 + 16);
      v65 = v96;
      do
      {
        *(&v101 + 1) = v61;
        *&v102 = MEMORY[0x1E6969D40];
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v100);
        (*v64)(boxed_opaque_existential_0Tm, v63, v61);
        __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
        sub_182AD1DC8();
        v67 = v98[6];
        v68 = v98[7];
        __swift_destroy_boxed_opaque_existential_1(&v100);
        sub_182AD2178();
        v69 = v67;
        v61 = v123;
        sub_181C1F2E4(v69, v68);
        v63 += v95;
        --v60;
      }

      while (v60);
      v96 = v65;

      v40 = v97;
      v71 = v94;
    }

    else
    {

      v40 = v97;
      v71 = v59;
    }

    v88 = v99;
    MEMORY[0x1EEE9AC00](v70);
    *(&v90 - 4) = a1;
    *(&v90 - 24) = 1;
    *(&v90 - 2) = sub_182123198;
    *(&v90 - 1) = v98;
    v89 = v96;
    sub_1820E375C(sub_182124410, (&v90 - 6), v88, *(&v88 + 1));
    v96 = v89;
    sub_181F49A88(v71, &unk_1EA83A980);
    sub_181C1F2E4(v88, *(&v88 + 1));
  }

LABEL_32:
  if (v115 != 1 || !v114)
  {
    v77 = v96;
    v78 = sub_182121D3C(v118, v119, SBYTE8(v119));
    if (v77)
    {
      v75 = v78;
      v76 = v79;
      v74 = v80;
      goto LABEL_40;
    }

    if ((v116 & 0x8000000000000000) == 0)
    {
      *&v120 = v116;
      BYTE8(v120) = 0;
      v81 = v117;
      if (v117 > 0x400)
      {
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v100 = 0xD000000000000015;
        *(&v100 + 1) = 0x8000000182BDE420;
        *&v99 = v81;
        v82 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v82);

        v76 = *(&v100 + 1);
        v75 = v100;
        v74 = 81;
        LOBYTE(v101) = 81;
        sub_181F5F494();
        swift_willThrowTypedImpl();
        goto LABEL_40;
      }

      v84 = sub_182AD3428();
      v85 = v84;
      v84[2] = v81 + 1;
      v84[4] = 0;
      v84[5] = 0;
      if (v81)
      {
        bzero(v84 + 6, 16 * v81);
      }

      v122 = v85;
      result = sub_1820DA3F8(a1, 1, &v119, &v100);
      v114 = v100;
      v115 = BYTE8(v100);
      if (BYTE8(v100) != 1 || !v100)
      {
        v86 = v120;
        v87 = v91;
        *v91 = v119;
        v87[1] = v86;
        v87[2] = v121;
        *(v87 + 6) = v122;
        return result;
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_34:
  v100 = 0uLL;
  v74 = 82;
  LOBYTE(v101) = 82;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  v75 = 0;
  v76 = 0;
LABEL_40:

  *v40 = v75;
  *(v40 + 8) = v76;
  *(v40 + 16) = v74;
  return result;
}

uint64_t sub_1821212A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v95 = a3;
  v90 = a4;
  v97 = sub_182AD27E8();
  v92 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v88 - v19;
  *&v123 = 26;
  BYTE8(v123) = 2;
  *&v124 = 0;
  BYTE8(v124) = 1;
  v125 = 0uLL;
  v126 = MEMORY[0x1E69E7CC0];
  v127 = 0uLL;
  BYTE9(v123) = a2;
  v129 = 0;
  v122 = 0;
  v121 = 0;
  v98[2] = &v129;
  v98[3] = &v121;
  v98[4] = &v123;
  v98[5] = &v122;
  if (*(a1 + 24) != 2)
  {
LABEL_4:
    v32 = *(a1 + 176);
    v115 = *(a1 + 160);
    v116 = v32;
    v117 = *(a1 + 192);
    v118 = *(a1 + 208);
    v33 = *(a1 + 112);
    v111 = *(a1 + 96);
    v112 = v33;
    v34 = *(a1 + 144);
    v113 = *(a1 + 128);
    v114 = v34;
    v35 = *(a1 + 48);
    v107 = *(a1 + 32);
    v108 = v35;
    v36 = *(a1 + 80);
    v109 = *(a1 + 64);
    v110 = v36;
    v37 = *(a1 + 16);
    v105 = *a1;
    v106 = v37;
    v38 = Frame.unclaimedBytes.getter();
    if (v40)
    {
LABEL_5:
      v119 = 1;
      v120 = 1;
      v41 = v96;
LABEL_6:
      v42 = v95;
      goto LABEL_33;
    }

    if (v38)
    {
      v43 = v39;
    }

    else
    {
      v43 = 0;
    }

    *&v105 = v38;
    *(&v105 + 1) = v43;
    v106 = 0uLL;
    LOBYTE(v107) = 1;
    v129 = sub_1820E2CC0();
    v121 = sub_1820E2CC0();
    *&v125 = sub_1820E2CC0();
    *(&v125 + 1) = sub_1820E2CC0();
    v122 = sub_1820E2CC0();
    v44 = *(&v106 + 1);
    v42 = v95;
    v41 = v96;
    if (v107)
    {
      if (*(&v106 + 1))
      {
        v45 = 1;
LABEL_32:
        v119 = v44;
        v120 = v45 & 1;
        goto LABEL_33;
      }

      if (v105)
      {
        v69 = *(&v105 + 1) - v105;
      }

      else
      {
        v69 = 0;
      }

      v44 = v69 - v106;
      if (__OFSUB__(v69, v106))
      {
        goto LABEL_49;
      }

      if (v44 < 0)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v56 = v69 == v106;
    }

    else
    {
      v56 = 0;
    }

    v70 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v106, 0, 1);
    if (!v70)
    {
      v44 = 2;
    }

    v45 = !v70 || v56;
    goto LABEL_32;
  }

  v89 = v15;
  v21 = swift_projectBox();
  sub_181AB5D28(v21, v20, &qword_1EA8398E0);
  v22 = sub_182AD2868();
  v23 = *(*(v22 - 8) + 8);
  v24 = v20;
  v25 = v22;
  v23(v24, v22);
  v26 = *(a1 + 176);
  v115 = *(a1 + 160);
  v116 = v26;
  v117 = *(a1 + 192);
  v118 = *(a1 + 208);
  v27 = *(a1 + 112);
  v111 = *(a1 + 96);
  v112 = v27;
  v28 = *(a1 + 144);
  v113 = *(a1 + 128);
  v114 = v28;
  v29 = *(a1 + 48);
  v107 = *(a1 + 32);
  v108 = v29;
  v30 = *(a1 + 80);
  v109 = *(a1 + 64);
  v110 = v30;
  v31 = *(a1 + 16);
  v105 = *a1;
  v106 = v31;
  sub_1821438A8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA839BA8);
    goto LABEL_4;
  }

  v46 = v93;
  sub_182022420(v9, v93);
  v47 = v89;
  sub_181AB5D28(v46, v89, &unk_1EA83A980);
  v48 = sub_182AD27F8();
  v23(v47, v25);
  v49 = *(v48 + 16);

  if (!v49)
  {
    sub_181F49A88(v46, &unk_1EA83A980);
    goto LABEL_5;
  }

  if (v49 == 1)
  {
    v50 = v94;
    sub_181AB5D28(v46, v94, &unk_1EA83A980);
    v51 = sub_182AD27F8();
    v23(v50, v25);
    v41 = v96;
    v52 = v97;
    if (!*(v51 + 16))
    {
LABEL_51:

      __break(1u);
      return result;
    }

    v54 = v91;
    v53 = v92;
    (*(v92 + 16))(v91, v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v97);

    MEMORY[0x1EEE9AC00](v55);
    *(&v88 - 4) = a1;
    *(&v88 - 24) = 1;
    *(&v88 - 2) = sub_182123198;
    *(&v88 - 1) = v98;
    sub_182AD27D8();
    sub_181F49A88(v46, &unk_1EA83A980);
    (*(v53 + 8))(v54, v52);
    goto LABEL_6;
  }

  v100 = xmmword_182AE7580;
  v57 = v89;
  sub_181AB5D28(v46, v89, &unk_1EA83A980);
  v58 = sub_182AD27F8();
  v23(v57, v25);
  v59 = *(v58 + 16);
  v60 = v97;
  if (v59)
  {
    v61 = *(v92 + 80);
    v91 = v58;
    v62 = v58 + ((v61 + 32) & ~v61);
    v94 = *(v92 + 72);
    v63 = (v92 + 16);
    v64 = v96;
    do
    {
      *(&v106 + 1) = v60;
      *&v107 = MEMORY[0x1E6969D40];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v105);
      (*v63)(boxed_opaque_existential_0Tm, v62, v60);
      __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      sub_182AD1DC8();
      v66 = v99[0];
      v67 = v99[1];
      __swift_destroy_boxed_opaque_existential_1(&v105);
      sub_182AD2178();
      v68 = v66;
      v60 = v97;
      sub_181C1F2E4(v68, v67);
      v62 += v94;
      --v59;
    }

    while (v59);
    v96 = v64;
  }

  v42 = v95;
  v86 = v100;
  MEMORY[0x1EEE9AC00](v85);
  *(&v88 - 4) = a1;
  *(&v88 - 24) = 1;
  *(&v88 - 2) = sub_182123198;
  *(&v88 - 1) = v98;
  v87 = v96;
  sub_1820E375C(sub_182124410, (&v88 - 6), v86, *(&v86 + 1));
  v41 = v87;
  sub_181F49A88(v93, &unk_1EA83A980);
  sub_181C1F2E4(v86, *(&v86 + 1));
LABEL_33:
  if (v120 == 1 && v119)
  {
LABEL_35:
    v105 = 0uLL;
    v71 = 82;
    LOBYTE(v106) = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v72 = 0;
    v73 = 0;
LABEL_41:
    v107 = v125;
    v108 = v126;
    v109 = v127;
    v105 = v123;
    v106 = v124;
    result = sub_1821231A4(&v105);
    *v42 = v72;
    *(v42 + 8) = v73;
    *(v42 + 16) = v71;
    return result;
  }

  v128[2] = v125;
  v128[3] = v126;
  v128[4] = v127;
  v128[0] = v123;
  v128[1] = v124;
  v74 = sub_1821056BC(v129);
  if (v41)
  {
    v72 = v74;
    v73 = v75;
    v71 = v76;
    goto LABEL_41;
  }

  if ((v121 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *&v124 = v121;
  BYTE8(v124) = 0;
  v77 = v122;
  if (v122 > 0x400)
  {
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v105 = 0xD000000000000015;
    *(&v105 + 1) = 0x8000000182BDE420;
    *&v100 = v77;
    v78 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v78);

    v73 = *(&v105 + 1);
    v72 = v105;
    v71 = 81;
    LOBYTE(v106) = 81;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    goto LABEL_41;
  }

  v80 = sub_182AD3428();
  v81 = v80;
  v80[2] = v77 + 1;
  v80[4] = 0;
  v80[5] = 0;
  if (v77)
  {
    bzero(v80 + 6, 16 * v77);
  }

  sub_1821231A4(v128);
  *&v126 = v81;
  sub_1820E06D8(a1, 1, &v123, &v105);
  v119 = v105;
  v120 = BYTE8(v105);
  if (BYTE8(v105) == 1 && v105)
  {
    goto LABEL_35;
  }

  v102 = v125;
  v103 = v126;
  v100 = v123;
  v101 = v124;
  v107 = v125;
  v108 = v126;
  v109 = v127;
  v106 = v124;
  v104 = v127;
  v105 = v123;
  sub_1821231D4(&v100, v99);
  result = sub_1821231A4(&v105);
  v82 = v103;
  v83 = v90;
  v90[2] = v102;
  v83[3] = v82;
  v83[4] = v104;
  v84 = v101;
  *v83 = v100;
  v83[1] = v84;
  return result;
}

uint64_t sub_182121D3C(uint64_t result, unint64_t a2, char a3)
{
  v3 = result;
  if (a3)
  {
    if (a3 != 1)
    {
      switch(a2)
      {
        case 1uLL:
          if (result != 1)
          {
            goto LABEL_13;
          }

          return v3;
        case 2uLL:
          if (result != 2)
          {
            goto LABEL_13;
          }

          return v3;
        case 3uLL:
          if (result != 3)
          {
            goto LABEL_13;
          }

          return v3;
        case 4uLL:
          if (result != 4)
          {
            goto LABEL_13;
          }

          return v3;
        case 5uLL:
          if (result != 5)
          {
            goto LABEL_13;
          }

          return v3;
        case 6uLL:
          if (result != 6)
          {
            goto LABEL_13;
          }

          return v3;
        case 7uLL:
          if (result != 7)
          {
            goto LABEL_13;
          }

          return v3;
        case 8uLL:
          if (result != 16)
          {
            goto LABEL_13;
          }

          return v3;
        case 9uLL:
          if (result != 17)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xAuLL:
          if (result != 18)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xBuLL:
          if (result != 19)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xCuLL:
          if (result != 20)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xDuLL:
          if (result != 21)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xEuLL:
          if (result != 22)
          {
            goto LABEL_13;
          }

          return v3;
        case 0xFuLL:
          if (result != 23)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x10uLL:
          if (result != 24)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x11uLL:
          if (result != 25)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x12uLL:
          if (result != 26)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x13uLL:
          if (result != 27)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x14uLL:
          if (result != 28)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x15uLL:
          if (result != 29)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x16uLL:
          if (result != 30)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x17uLL:
          if (result != 175)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x18uLL:
          if (result != 172)
          {
            goto LABEL_13;
          }

          return v3;
        case 0x19uLL:
          v4 = 12237312;
          goto LABEL_67;
        case 0x1AuLL:
          v4 = 12237313;
          goto LABEL_67;
        case 0x1BuLL:
          v4 = 12237317;
          goto LABEL_67;
        case 0x1CuLL:
          v4 = 12237318;
LABEL_67:
          if (result != v4)
          {
            goto LABEL_13;
          }

          return v3;
        default:
          if (result)
          {
            goto LABEL_13;
          }

          return v3;
      }
    }

    if (a2)
    {
      if (result == 49)
      {
        return v3;
      }
    }

    else if (result == 48)
    {
      return v3;
    }

LABEL_13:
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return v3;
  }

  if (a2 < 0xFFFFFFFFFFFFFFF8)
  {
    if (a2 + 8 == result)
    {
      return v3;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_182121F6C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = v3;
  v95 = a3;
  v102 = sub_182AD27E8();
  v98 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v93 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v93 - v20;
  v122 = 0;
  v123 = 27;
  v124 = 2;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v128 = 1;
  v129 = 0;
  v130 = 0xE000000000000000;
  v131 = 0;
  v121 = 0;
  v103[2] = &v131;
  v103[3] = &v123;
  v103[4] = &v122;
  v103[5] = &v121;
  LODWORD(v20) = *(a1 + 24);
  v101 = a2;
  if (v20 == 2)
  {
    v97 = v3;
    v22 = swift_projectBox();
    sub_181AB5D28(v22, v21, &qword_1EA8398E0);
    v23 = sub_182AD2868();
    v94 = *(*(v23 - 8) + 8);
    v94(v21, v23);
    v24 = a1[11];
    v117 = a1[10];
    v118 = v24;
    v119 = a1[12];
    v120 = *(a1 + 208);
    v25 = a1[7];
    v113 = a1[6];
    v114 = v25;
    v26 = a1[9];
    v115 = a1[8];
    v116 = v26;
    v27 = a1[3];
    v109 = a1[2];
    v110 = v27;
    v28 = a1[5];
    v111 = a1[4];
    v112 = v28;
    v29 = a1[1];
    v107 = *a1;
    v108 = v29;
    sub_1821438A8(v10);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v44 = v99;
      sub_182022420(v10, v99);
      v45 = v44;
      sub_181AB5D28(v44, v16, &unk_1EA83A980);
      v46 = sub_182AD27F8();
      v94(v16, v23);
      v47 = *(v46 + 16);

      if (v47)
      {
        v48 = v23;
        if (v47 != 1)
        {
          v106 = xmmword_182AE7580;
          sub_181AB5D28(v45, v16, &unk_1EA83A980);
          v59 = sub_182AD27F8();
          v94(v16, v23);
          v60 = *(v59 + 16);
          v61 = v102;
          if (v60)
          {
            v62 = v97;
            v63 = *(v98 + 80);
            v96 = v59;
            v64 = v59 + ((v63 + 32) & ~v63);
            v100 = *(v98 + 72);
            v65 = (v98 + 16);
            do
            {
              *(&v108 + 1) = v61;
              *&v109 = MEMORY[0x1E6969D40];
              boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v107);
              (*v65)(boxed_opaque_existential_0Tm, v64, v61);
              __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
              sub_182AD1DC8();
              v67 = v104;
              v68 = v105;
              __swift_destroy_boxed_opaque_existential_1(&v107);
              sub_182AD2178();
              v69 = v67;
              v61 = v102;
              sub_181C1F2E4(v69, v68);
              v64 += v100;
              --v60;
            }

            while (v60);
            v97 = v62;

            v39 = v101;
            v45 = v99;
          }

          else
          {

            v39 = v101;
          }

          v91 = v106;
          MEMORY[0x1EEE9AC00](v70);
          *(&v93 - 4) = a1;
          *(&v93 - 24) = 1;
          *(&v93 - 2) = sub_18212320C;
          *(&v93 - 1) = v103;
          v92 = v97;
          sub_1820E375C(sub_182124410, (&v93 - 6), v91, *(&v91 + 1));
          v5 = v92;
          sub_181F49A88(v45, &unk_1EA83A980);
          sub_181C1F2E4(v91, *(&v91 + 1));
          goto LABEL_36;
        }

        v49 = v45;
        v50 = v100;
        sub_181AB5D28(v45, v100, &unk_1EA83A980);
        v51 = sub_182AD27F8();
        v94(v50, v48);
        v52 = v102;
        if (!*(v51 + 16))
        {
LABEL_55:

          __break(1u);
          return result;
        }

        v53 = v98;
        v54 = v96;
        (*(v98 + 16))(v96, v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v102);

        MEMORY[0x1EEE9AC00](v55);
        *(&v93 - 4) = a1;
        *(&v93 - 24) = 1;
        *(&v93 - 2) = sub_18212320C;
        *(&v93 - 1) = v103;
        v56 = v97;
        sub_182AD27D8();
        v5 = v56;
        sub_181F49A88(v49, &unk_1EA83A980);
        (*(v53 + 8))(v54, v52);
      }

      else
      {
        sub_181F49A88(v45, &unk_1EA83A980);
        v104 = 1;
        LOBYTE(v105) = 1;
        v5 = v97;
      }

      v39 = v101;
      goto LABEL_36;
    }

    sub_181F49A88(v10, &qword_1EA839BA8);
    v5 = v97;
    a2 = v101;
  }

  v30 = a1[11];
  v117 = a1[10];
  v118 = v30;
  v119 = a1[12];
  v120 = *(a1 + 208);
  v31 = a1[7];
  v113 = a1[6];
  v114 = v31;
  v32 = a1[9];
  v115 = a1[8];
  v116 = v32;
  v33 = a1[3];
  v109 = a1[2];
  v110 = v33;
  v34 = a1[5];
  v111 = a1[4];
  v112 = v34;
  v35 = a1[1];
  v107 = *a1;
  v108 = v35;
  v36 = Frame.unclaimedBytes.getter();
  if (v38)
  {
    v104 = 1;
    LOBYTE(v105) = 1;
    v39 = a2;
    goto LABEL_36;
  }

  if (v36)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0;
  }

  *&v107 = v36;
  *(&v107 + 1) = v40;
  v108 = 0uLL;
  LOBYTE(v109) = 1;
  v131 = sub_1820E2CC0();
  v125 = sub_1820E2CC0();
  v39 = a2;
  if (v125 != 2)
  {
    v126 = sub_1820E2CC0();
  }

  v122 = sub_1820E2CC0();
  v41 = sub_1820E2CC0();
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  Deserializer.fixedLengthUTF8(_:byteCount:)(&v129, v41, &v106);
  v42 = *(&v108 + 1);
  if (v109 != 1)
  {
    v57 = v5;
    v58 = 0;
LABEL_32:
    v72 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v108, 0, 1);
    if (!v72)
    {
      v42 = 2;
    }

    v43 = !v72 || v58;
    v5 = v57;
    goto LABEL_35;
  }

  if (!*(&v108 + 1))
  {
    if (v107)
    {
      v71 = *(&v107 + 1) - v107;
    }

    else
    {
      v71 = 0;
    }

    v42 = v71 - v108;
    if (!__OFSUB__(v71, v108))
    {
      if ((v42 & 0x8000000000000000) == 0)
      {
        v57 = v5;
        v58 = v71 == v108;
        goto LABEL_32;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v43 = 1;
LABEL_35:
  v104 = v42;
  LOBYTE(v105) = v43 & 1;
LABEL_36:
  if (v105 == 1 && v104)
  {
    v107 = 0uLL;
    v73 = 82;
    LOBYTE(v108) = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v76 = v123;
    v77 = v124;
    v78 = v125;
    v102 = v126;
    v80 = v129;
    v79 = v130;
    v81 = sub_182121D3C(v131, v123, v124);
    if (v5)
    {
      v74 = v81;
      v75 = v82;
      v73 = v83;
    }

    else
    {
      v84 = v102;
      if (v78 <= 2)
      {
        v85 = v79;
        v86 = v122;
        result = sub_18211E1C8(v122);
        if ((v88 & 0x100) == 0)
        {
          LOBYTE(v107) = v88 & 1;
          v89 = v95;
          *v95 = v76;
          *(v89 + 8) = v77;
          v89[2] = v78;
          v89[3] = v84;
          v89[4] = result;
          *(v89 + 40) = v88 & 1;
          v89[6] = v80;
          v89[7] = v85;
          return result;
        }

        *&v107 = 0;
        *(&v107 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v107 = 0xD000000000000020;
        *(&v107 + 1) = 0x8000000182BDE460;
        *&v106 = v86;
      }

      else
      {
        *&v107 = 0;
        *(&v107 + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v107 = 0xD000000000000026;
        *(&v107 + 1) = 0x8000000182BDE550;
        *&v106 = v78;
      }

      v90 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v90);

      v75 = *(&v107 + 1);
      v74 = v107;
      v73 = 81;
      LOBYTE(v108) = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
    }

    v39 = v101;
  }

  *v39 = v74;
  *(v39 + 8) = v75;
  *(v39 + 16) = v73;
  return result;
}

__n128 sub_1821229FC@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = 0;
  *&v24 = 28;
  BYTE8(v24) = 2;
  v25 = 0u;
  v26 = 0u;
  sub_1820E0ED0(a1, 1, &v23, &v24, &v19);
  v27 = v24;
  v28 = v25;
  v29 = v26;
  v6 = v24;
  v7 = BYTE8(v24);
  if (v20 == 1 && v19)
  {
    v19 = 0;
    v20 = 0;
    v8 = 82;
    v21 = 82;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v17 = v26;
    v18 = v25;
    v10 = sub_182105908(v23);
    if (v3)
    {
      v8 = v12;
    }

    else
    {
      v13 = v28;
      if (v28 <= 2)
      {
        *a3 = v6;
        *(a3 + 8) = v7;
        result = v17;
        *(a3 + 16) = v18;
        *(a3 + 32) = v17;
        return result;
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      sub_182AD3BA8();

      v19 = 0xD000000000000026;
      v20 = 0x8000000182BDE550;
      v22 = v13;
      v14 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v14);

      v15 = v19;
      v16 = v20;
      v8 = 81;
      v21 = 81;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v11 = v16;
      v10 = v15;
    }
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v8;
  return result;
}

void sub_182122BAC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (*(a4 + 1035) == 1)
  {
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000032, 0x8000000182BDE3A0);
    LOBYTE(v31[0]) = a3;
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);

    v6 = sub_182AD2678();
    v7 = sub_182AD3898();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v33[0] = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, v33);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v33);
      *(v8 + 22) = 2080;
      v13 = sub_181C64FFC(0, 0xE000000000000000, v33);

      *(v8 + 24) = v13;
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v15 = 0x2000;
    if (a3 != 1)
    {
      v15 = 4096;
    }

    if (v15 >= *(*(*(a4 + 360) + 8 * a3 + 184) + 40))
    {
      sub_182034418(v33);
      v31[10] = v33[10];
      v31[11] = v33[11];
      v31[12] = v33[12];
      v32 = v34;
      v31[6] = v33[6];
      v31[7] = v33[7];
      v31[8] = v33[8];
      v31[9] = v33[9];
      v31[2] = v33[2];
      v31[3] = v33[3];
      v31[4] = v33[4];
      v31[5] = v33[5];
      v31[0] = v33[0];
      v31[1] = v33[1];
      if (a1 < 0)
      {
        __break(1u);
      }

      else
      {
        v29 = *(a2 + 16);

        v30 = sub_1820E66DC(v31, a2, a1, v29, 0);

        if (v30)
        {

          sub_18203720C(0, 0);

          sub_18203720C(1, 0);

          sub_18203720C(2, 0);
        }
      }
    }

    else
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v16 = sub_182AD2698();
      __swift_project_value_buffer(v16, qword_1EA843418);
      v17 = sub_182AD2678();
      v18 = sub_182AD38B8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v33[0] = v20;
        *v19 = 136315650;
        v21 = sub_182AD3BF8();
        v23 = sub_181C64FFC(v21, v22, v33);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v33);
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_181C64FFC(0xD000000000000018, 0x8000000182BDE360, v33);
        _os_log_impl(&dword_181A37000, v17, v18, "%s %s %s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v20, -1, -1);
        MEMORY[0x1865DF520](v19, -1, -1);
      }

      if (a3 == 1)
      {
        v24 = *(a4 + 1144);
        v25 = *(a4 + 1152);
        *(a4 + 1144) = 0xD000000000000016;
        *(a4 + 1152) = 0x8000000182BDE380;
        v26 = *(a4 + 1160);
        *(a4 + 1160) = 3;
        sub_182023268(v24, v25, v26);
      }
    }
  }
}

uint64_t sub_182123504(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18212354C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1821235BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18212369C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
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

uint64_t sub_1821236F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_182123750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1821237F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18212383C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1821238A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1821238E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182123958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1821239B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_182123A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182123B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_182123B84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_182123BD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182123C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182123D40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_182123D88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_182123DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_182123E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_182123E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_182123F28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182123F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FramePing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FramePing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_182124090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1821240E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network15FrameParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_18212417C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1821241C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_182124208(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_182124254()
{
  result = qword_1EA83A588;
  if (!qword_1EA83A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A588);
  }

  return result;
}

unint64_t sub_1821242AC()
{
  result = qword_1EA83A590;
  if (!qword_1EA83A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A590);
  }

  return result;
}

unint64_t sub_182124300()
{
  result = qword_1EA83A598;
  if (!qword_1EA83A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A598);
  }

  return result;
}

unint64_t sub_182124354()
{
  result = qword_1EA83A5A0;
  if (!qword_1EA83A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A5A0);
  }

  return result;
}

uint64_t sub_182124428(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = sub_182AD3B98();
        goto LABEL_7;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = v6;
        v13 = v17 + v5;
        v8 = *(v17 + v5);
        if ((*(v17 + v5) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v15 = (__clz(v8 ^ 0xFF) - 24);
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v8 = ((v8 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
            v9 = 3;
          }

          else
          {
            v8 = ((v8 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
            v9 = 4;
          }
        }

        else
        {
          if (v15 == 1)
          {
LABEL_16:
            v9 = 1;
            goto LABEL_7;
          }

          v8 = v13[1] & 0x3F | ((v8 & 0x1F) << 6);
          v9 = 2;
        }
      }

      else
      {
        v10 = v7;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v10 = sub_182AD3CF8();
        }

        v11 = (v10 + v5);
        v12 = *(v10 + v5);
        if ((v12 & 0x80000000) == 0)
        {
          v9 = 1;
          goto LABEL_8;
        }

        v14 = __clz(~v12) - 24;
        if (v14 > 2u)
        {
          if (v14 == 3)
          {
            v8 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v9 = 3;
          }

          else
          {
            v8 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v9 = 4;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v9 = v14;
            goto LABEL_8;
          }

          v8 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v9 = 2;
        }
      }

LABEL_7:
      if (v8 > 0xFF)
      {
        return 0;
      }

LABEL_8:
      v5 += v9;
    }

    while (v5 < v2);
  }

  return 1;
}

id sub_182124640@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_182AD2058();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v77 = &v72 - v10;
  result = [a1 HTTPMethod];
  if (result)
  {
    v12 = result;
    v13 = sub_182AD2F88();
    v15 = v14;

    if ((v15 & 0x1000000000000000) != 0)
    {
      v13 = sub_18224FE14();
      v17 = v16;

      v15 = v17;
      if ((v17 & 0x2000000000000000) == 0)
      {
LABEL_4:
        if ((v13 & 0x1000000000000000) == 0)
        {
          goto LABEL_57;
        }

        while (1)
        {
LABEL_8:
          v18 = sub_182AD30B8();
          v20 = v19;
          v75 = v4;
          v76 = v5;
          result = [a1 URL];
          if (!result)
          {
            goto LABEL_61;
          }

          v21 = result;
          sub_182AD1FD8();

          v85 = sub_181C9FCB4();
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          *(v23 + 16) = &v85;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_182127440;
          *(v24 + 24) = v23;
          v74 = v23;
          v81 = sub_182127448;
          v82 = v24;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v79 = sub_182125D08;
          v80 = &block_descriptor_23;
          v5 = _Block_copy(&aBlock);
          v4 = v82;

          [v22 _enumerateHTTPHeaderFieldsWithRequest_usingBlock_];
          _Block_release(v5);
          LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

          if (v22)
          {
            break;
          }

          v25 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v25 = v18 & 0xFFFFFFFFFFFFLL;
          }

          if (!v25)
          {
            goto LABEL_55;
          }

          v26 = sub_181CA3274(v18, v20);

          if (v26)
          {
            v73 = a1;
            *&v86 = v18;
            *(&v86 + 1) = v20;
            v27 = v76;
            v28 = v75;
            v76[2](v7, v77, v75);
            v84 = v85;

            HTTPRequest.init(method:url:headerFields:)(&v86, v7, &v84, &aBlock);
            v86 = aBlock;
            v29 = aBlock;
            if ((*(aBlock + 56) != 5522759 || *(aBlock + 64) != 0xE300000000000000) && (sub_182AD4268() & 1) == 0 || (v30 = *(v29 + 80)) == 0)
            {
              (v27[1])(v77, v28);

              goto LABEL_52;
            }

            v31 = *(v29 + 72);
            v32 = *(v29 + 112);
            v33 = *(v29 + 120);
            v34 = sub_181CA4798(v32, v33);
            v72 = a2;
            if (v34)
            {
            }

            else
            {
              sub_181F887D0(v31, v30);
              v35 = sub_182287700(v32, v33);
              v37 = v36;
              sub_181D04D28(v31, v30);
              v32 = v35;
              v33 = v37;
              a2 = v72;
            }

            v38 = v76;
            if ((v33 & 0x1000000000000000) != 0)
            {
              v39 = sub_182AD3168();
              if (v39 > 6)
              {
                goto LABEL_31;
              }
            }

            else
            {
              if ((v33 & 0x2000000000000000) == 0)
              {
                v39 = v32 & 0xFFFFFFFFFFFFLL;
                if ((v32 & 0xFFFFFFFFFFFFLL) <= 6)
                {
                  goto LABEL_25;
                }

LABEL_31:
                if (v39 == 7)
                {
                  v49 = sub_182AD3028();
                  v51 = v50;

                  if (v49 == 0x78696E752B7377 && v51 == 0xE700000000000000)
                  {
                  }

                  else
                  {
                    v66 = sub_182AD4268();

                    if ((v66 & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  v68 = *(v29 + 16);
                  v67 = *(v29 + 24);
                  v70 = *(v29 + 32);
                  v69 = *(v29 + 40);
                  v71 = *(v29 + 48);

                  *&aBlock = v68;
                  *(&aBlock + 1) = v67;
                  v79 = v70;
                  v80 = v69;
                  LOBYTE(v81) = v71;
                  v82 = 0x5443454E4E4F43;
                  v83 = 0xE700000000000000;
                  HTTPRequest.PseudoHeaderFields.method.setter(&aBlock);
                  v58 = 1886680168;
                  v59 = 0xE400000000000000;
LABEL_49:
                  HTTPRequest.scheme.setter(v58, v59);
                  HTTPRequest.extendedConnectProtocol.setter(0x656B636F73626577uLL, 0xE900000000000074);

                  (v38[1])(v77, v75);
LABEL_51:
                  a2 = v72;
                }

                else
                {
                  if (v39 == 8)
                  {
                    v43 = sub_182AD3028();
                    v45 = v44;

                    if (v43 == 0x78696E752B737377 && v45 == 0xE800000000000000)
                    {
LABEL_35:

                      goto LABEL_44;
                    }

LABEL_43:
                    v52 = sub_182AD4268();

                    if (v52)
                    {
LABEL_44:
                      v54 = *(v29 + 16);
                      v53 = *(v29 + 24);
                      v56 = *(v29 + 32);
                      v55 = *(v29 + 40);
                      v57 = *(v29 + 48);

                      *&aBlock = v54;
                      *(&aBlock + 1) = v53;
                      v79 = v56;
                      v80 = v55;
                      LOBYTE(v81) = v57;
                      v82 = 0x5443454E4E4F43;
                      v83 = 0xE700000000000000;
                      HTTPRequest.PseudoHeaderFields.method.setter(&aBlock);
                      v58 = 0x7370747468;
                      v59 = 0xE500000000000000;
                      goto LABEL_49;
                    }

LABEL_50:
                    (v38[1])(v77, v75);

                    goto LABEL_51;
                  }

LABEL_36:
                  (v38[1])(v77, v75);
                }

                goto LABEL_52;
              }

              v39 = HIBYTE(v33) & 0xF;
              if (v39 > 6)
              {
                goto LABEL_31;
              }
            }

LABEL_25:
            if (v39 != 2)
            {
              if (v39 == 3)
              {
                v40 = sub_182AD3028();
                v42 = v41;

                if (v40 == 7566199 && v42 == 0xE300000000000000)
                {
                  goto LABEL_35;
                }

                goto LABEL_43;
              }

              goto LABEL_36;
            }

            v46 = sub_182AD3028();
            v48 = v47;

            if (v46 == 29559 && v48 == 0xE200000000000000)
            {
            }

            else
            {
              v60 = sub_182AD4268();

              if ((v60 & 1) == 0)
              {
                (v38[1])(v77, v75);

                goto LABEL_52;
              }
            }

            v62 = *(v29 + 16);
            v61 = *(v29 + 24);
            v64 = *(v29 + 32);
            v63 = *(v29 + 40);
            v65 = *(v29 + 48);

            *&aBlock = v62;
            *(&aBlock + 1) = v61;
            v79 = v64;
            v80 = v63;
            a2 = v72;
            LOBYTE(v81) = v65;
            v82 = 0x5443454E4E4F43;
            v83 = 0xE700000000000000;
            HTTPRequest.PseudoHeaderFields.method.setter(&aBlock);
            HTTPRequest.scheme.setter(0x70747468uLL, 0xE400000000000000);
            HTTPRequest.extendedConnectProtocol.setter(0x656B636F73626577uLL, 0xE900000000000074);

            (v38[1])(v77, v75);
LABEL_52:

            *a2 = v86;
            return result;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          sub_182AD3CF8();
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else if ((v15 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

    *&aBlock = v13;
    *(&aBlock + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_182124F04(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, unsigned __int8 *(*a5)@<X0>(unsigned __int8 *result@<X0>, _DWORD *a2@<X8>), uint64_t a6)
{
  v12 = *a1;
  v13 = a1[1];
  if ((v13 & 0x1000000000000000) != 0)
  {
    v40 = sub_18224FE14();
    v19 = v18;

    v12 = v40;
    *a1 = v40;
    a1[1] = v19;
    v13 = v19;
    if ((v19 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v32[0] = v12;
    v32[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if ((v13 & 0xF00000000000000) != 0)
    {
      v20 = v32;
      v21 = HIBYTE(v13) & 0xF;
      while ((*v20 & 0x80000000) == 0)
      {
        ++v20;
        if (!--v21)
        {
          goto LABEL_15;
        }
      }

      v33 = v32;
      v34 = HIBYTE(v13) & 0xF;
      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v12 & 0x1000000000000000) != 0)
  {
    v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v16 = v12 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = sub_182AD3CF8();
    if (v15)
    {
      v16 = v31;
      if (v31)
      {
LABEL_5:
        v17 = 0;
        while ((*(v15 + v17) & 0x80000000) == 0)
        {
          if (v16 == ++v17)
          {
            goto LABEL_8;
          }
        }

        v33 = v15;
        v34 = v16;
LABEL_18:
        v35 = sub_1822876F4;
        v36 = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5B0);
        sub_181AB3DCC(&qword_1EA83A5B8, &qword_1EA83A5B0);
        sub_182AD30A8();
        v22 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_19;
      }
    }
  }

LABEL_8:

LABEL_16:
  v22 = sub_182AD30B8();
  v24 = v23;
LABEL_19:
  v25 = sub_181DDDCA0(v22, v24);
  v27 = v26;

  v28 = *a2;
  swift_beginAccess();
  v29 = *(*(v28 + 16) + 16);
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = 0;
  v38 = v25;
  v39 = v27;
  sub_181DAE9E4(v29, v29, &v33);

  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_18212516C(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t *a5)
{
  v62 = a5;
  v9 = sub_182AD2698();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v66 = v9;
    v63 = v10;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *&v78 = a1;
      *(&v78 + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    }

    else if ((a1 & 0x1000000000000000) == 0)
    {
      sub_182AD3CF8();
    }

    v13 = sub_182AD30B8();
    v15 = v13;
    v9 = v14;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v61 = v14;
    v64 = v13;
    if (!v16 || (v17 = sub_181CA3274(v13, v14), v60 = 0, (v17 & 1) == 0))
    {
      if (qword_1EA836640 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v66, qword_1EA843130);

      v55 = sub_182AD2678();
      v45 = sub_182AD38C8();

      if (os_log_type_enabled(v55, v45))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v78 = v57;
        *v56 = 136315138;
        v58 = sub_181C64FFC(v64, v61, &v78);

        *(v56 + 4) = v58;
        _os_log_impl(&dword_181A37000, v55, v45, "Invalid request header field name: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1865DF520](v57, -1, -1);
        MEMORY[0x1865DF520](v56, -1, -1);
      }

      else
      {
      }

      sub_182AD3EA8();
      __break(1u);
LABEL_60:

      __break(1u);
      goto LABEL_61;
    }

    v65 = sub_182AD3028();
    v67 = v18;
    if (v65 != 0x65696B6F6F63 || v18 != 0xE600000000000000)
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_14:
    *&v78 = a3;
    *(&v78 + 1) = a4;
    *&v75 = 8251;
    *(&v75 + 1) = 0xE200000000000000;
    sub_18208C2BC();
    v20 = sub_182AD37C8();
    v21 = *(v20 + 16);
    if (!v21)
    {

      goto LABEL_38;
    }

    v59[0] = v20;
    v59[1] = a2;
    a3 = (v20 + 56);
    v22 = v62;
    while (1)
    {
      v29 = *(a3 - 3);
      v30 = *(a3 - 2);
      v32 = *(a3 - 1);
      v31 = *a3;

      v33 = MEMORY[0x1865D9BC0](v29, v30, v32, v31);
      a4 = v34;

      if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v33, a4))
      {
        v66 = v33;
        v35 = v67;
        goto LABEL_27;
      }

      *&v78 = v33;
      *(&v78 + 1) = a4;
      v79 = sub_181FF27F8;
      v80 = 0;
      v81 = sub_181FF3C3C;
      v82 = 0;
      v83 = sub_181FF3C3C;
      v84 = 0;
      v75 = v78;
      v76 = sub_181FF27F8;
      *v77 = sub_181FF3C3C;
      *&v77[16] = sub_181FF3C3C;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C8);
      if (swift_dynamicCast())
      {
        sub_181F3CF20(&v69, &v72);
        __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
        v36 = sub_182AD3F18();
        v35 = v67;
        if (v36)
        {
          v66 = *&v74[0];
          __swift_project_boxed_opaque_existential_1(&v72, *(&v73 + 1));
          v37 = v21;
          v38 = v60;
          sub_182AD3F08();
          v60 = v38;
          v21 = v37;

          a4 = *(&v75 + 1);
          v66 = v75;
          __swift_destroy_boxed_opaque_existential_1(&v72);
          goto LABEL_27;
        }

        __swift_destroy_boxed_opaque_existential_1(&v72);
      }

      else
      {
        *&v71[0] = 0;
        v69 = 0u;
        v70 = 0u;
        sub_181F49A88(&v69, &unk_1EA8394D0);
        v35 = v67;
      }

      v66 = sub_181FACAE4(&v78);
      v40 = v39;

      a4 = v40;
LABEL_27:
      v41 = *v22;
      swift_beginAccess();
      v10 = *(*(v41 + 16) + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_181DAEBE0();

        *v22 = v43;
      }

      swift_beginAccess();
      if (v10 == *(*(v43 + 16) + 16))
      {
        v12 = v64;
        if ((sub_181CBD984(v64, v9) & 0x1FF) == 0x3A)
        {
          goto LABEL_51;
        }

        *&v75 = v12;
        *(&v75 + 1) = v9;
        *&v76 = v65;
        *(&v76 + 1) = v35;
        v77[0] = 0;
        *&v77[8] = v66;
        *&v77[16] = a4;

        sub_181CA21B0(&v75);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        goto LABEL_18;
      }

      swift_beginAccess();
      *(v43 + 24) = 0;

      swift_beginAccess();
      v23 = *(v43 + 16);
      v12 = v23[2];
      if (v12 < v10)
      {
        break;
      }

      v44 = swift_isUniquelyReferenced_nonNull_native();
      *(v43 + 16) = v23;
      v63 = v21;
      if (!v44 || v12 >= v23[3] >> 1)
      {
        v23 = sub_181CA2688(v44, (v12 + 1), 1, v23);
        *(v43 + 16) = v23;
      }

      v24 = &v23[8 * v10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
      swift_arrayDestroy();
      memmove(v24 + 6, v24 + 2, (v23[2] - v10) << 6);
      ++v23[2];
      v25 = v61;
      *&v75 = v64;
      *(&v75 + 1) = v61;
      *&v76 = v65;
      *(&v76 + 1) = v67;
      v77[0] = 0;
      *&v77[8] = v66;
      *&v77[16] = a4;

      sub_1820883E8(&v75, &v69);
      v10 = *(&v76 + 1);

      v72 = v69;
      v73 = v70;
      v74[0] = v71[0];
      *(v74 + 10) = *(v71 + 10);
      v75 = v69;
      v76 = v70;
      *v77 = v71[0];
      *&v77[10] = *(v71 + 10);
      sub_182127118(&v72, &v68);
      sub_181F49A88(&v75, &qword_1EA839C10);
      v26 = v72;
      v27 = v73;
      v28 = v74[0];
      *(v24 + 74) = *(v74 + 10);
      v24[3] = v27;
      v24[4] = v28;
      v24[2] = v26;
      v9 = v25;

      *(v43 + 16) = v23;
      swift_endAccess();
      v12 = v23[2];

      v22 = v62;
      v21 = v63;
      if (v12 > 0xFFFE)
      {
        goto LABEL_50;
      }

LABEL_18:
      a3 += 4;
      if (!--v21)
      {

        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    a1 = sub_18224FE14();
    v54 = v53;

    a2 = v54;
  }

  v19 = sub_182AD4268();
  swift_bridgeObjectRelease_n();
  if (v19)
  {
    goto LABEL_14;
  }

  v45 = v60;
  if ((sub_182124428(a3, a4) & 1) == 0)
  {

    sub_182AD2688();

    v48 = sub_182AD2678();
    v49 = sub_182AD38C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v78 = v51;
      *v50 = 136315394;

      v52 = sub_181C64FFC(a1, a2, &v78);

      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_181C64FFC(a3, a4, &v78);
      _os_log_impl(&dword_181A37000, v48, v49, "Dropping invalid header field (%s: %s)", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v51, -1, -1);
      MEMORY[0x1865DF520](v50, -1, -1);
    }

    (*(v63 + 8))(v12, v66);
    goto LABEL_48;
  }

  v46 = sub_181CA4798(a3, a4);
  v47 = v67;
  if (v46)
  {
    *&v78 = a3;
    *(&v78 + 1) = a4;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_182124F04(&v78, v62, v15, v9, v65, v47);
    if (!v45)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
LABEL_38:

LABEL_48:

      return;
    }

    goto LABEL_60;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1822882C0(a3, a4, v62, v15, v9, v65, v47);
  if (!v45)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_48;
  }

LABEL_61:

  __break(1u);
}

uint64_t sub_182125D08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_182AD2F88();
  v4 = v3;
  v5 = sub_182AD2F88();
  v1(v2, v4, v5, v6);
}

void sub_182125D8C(uint64_t a1, uint64_t a2, const __CFURL *a3)
{
  v88 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v83 - v8);
  v11 = *v3;
  v10 = v3[1];
  v12 = *(*v3 + 56) == 0x5443454E4E4F43 && *(*v3 + 64) == 0xE700000000000000;
  if (v12 || (sub_182AD4268() & 1) != 0)
  {
    v13 = a1;
    v14 = *(v11 + 248);
    if (v14)
    {
      Request = v9;
      v90 = a2;
      v91 = a3;
      v86 = v10;
      v15 = *(v11 + 240);
      v16 = *(v11 + 280);
      v17 = *(v11 + 288);
      v18 = v88;
      if (sub_181CA4798(v16, v17))
      {
        v88 = v18;
      }

      else
      {
        sub_181F887D0(v15, v14);
        v87 = sub_182287700(v16, v17);
        v88 = v18;
        v85 = v19;
        sub_181D04D28(v15, v14);
        v16 = v87;
        v17 = v85;
      }

      v20 = v13;
      v21 = v16 == 0x656B636F73626577 && v17 == 0xE900000000000074;
      v10 = v86;
      a3 = v91;
      v9 = Request;
      if (v21)
      {

        v23 = v90;
      }

      else
      {
        v22 = sub_182AD4268();

        v23 = v90;
        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v100 = v11;
      v101 = v10;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      v30 = *(v11 + 32);
      v29 = *(v11 + 40);
      v31 = *(v11 + 48);

      v92 = v28;
      v93 = v27;
      v94 = v30;
      v95 = v29;
      v96 = v31;
      v97 = 5522759;
      v98 = 0xE300000000000000;
      HTTPRequest.PseudoHeaderFields.method.setter(&v92);
      v32 = *(v11 + 80);
      if (v32)
      {
        v33 = *(v11 + 72);
        v34 = *(v11 + 112);
        v35 = *(v11 + 120);
        if (sub_181CA4798(v34, v35))
        {
        }

        else
        {
          sub_181F887D0(v33, v32);
          sub_182287700(v34, v35);
          sub_181D04D28(v33, v32);
        }

        v71 = sub_182AD3028();
        v73 = v72;

        v23 = v90;
        if (v71 == 0x7370747468 && v73 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0)
        {

          v74 = 7566199;
          v75 = 0xE300000000000000;
        }

        else
        {
          if (v71 == 1886680168 && v73 == 0xE400000000000000)
          {
          }

          else
          {
            v82 = sub_182AD4268();

            if ((v82 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v74 = 29559;
          v75 = 0xE200000000000000;
        }

        HTTPRequest.scheme.setter(v74, v75);
      }

LABEL_57:
      v76 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v91;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v79 = sub_1822C9498();

        v76 = v79;
      }

      v80 = *(v76 + 240);
      v81 = *(v76 + 248);
      *(v76 + 240) = 0u;
      *(v76 + 256) = 0u;
      *(v76 + 272) = 0u;
      *(v76 + 288) = 0;
      sub_181D04D28(v80, v81);
      v92 = v76;
      v93 = v101;

      sub_182125D8C(v20, v23, v78);

      return;
    }
  }

LABEL_16:
  if (a3)
  {
    v24 = a3;
LABEL_25:
    v37 = a3;
    goto LABEL_26;
  }

  v92 = v11;
  v93 = v10;
  HTTPRequest.url.getter(v9);
  v25 = sub_182AD2058();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) != 1)
  {
    v36 = sub_182AD1F98();
    (*(v26 + 8))(v9, v25);
    v24 = v36;
    goto LABEL_25;
  }

  v24 = 0;
LABEL_26:
  v38 = *MEMORY[0x1E695E480];

  v39 = sub_182AD2F58();

  v40 = sub_182AD2F58();
  v85 = v38;
  Request = CFHTTPMessageCreateRequest(v38, v39, v24, v40);

  swift_beginAccess();
  v41 = *(v10 + 16);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = 1;
    do
    {
      v45 = v43 << 6;
      v46 = (v43 + 1);
      v47 = v45 + 80;
      while (1)
      {
        if (v46 - 1 >= v42)
        {
          __break(1u);
          goto LABEL_66;
        }

        v48 = v41 + v47;
        v49 = *(v48 - 40);
        v90 = *(v48 - 48);
        v91 = v46;
        if (*(v48 - 32) == 0x65696B6F6F63 && *(v48 - 24) == 0xE600000000000000)
        {
          break;
        }

        v51 = sub_182AD4268();

        swift_bridgeObjectRelease_n();
        if (v51)
        {
          goto LABEL_38;
        }

        v52 = Request;
        v53 = sub_182AD2F58();
        v54 = sub_182AD2F58();
        _CFHTTPMessageAddHeaderFieldValue();

        v41 = *(v10 + 16);
        v42 = *(v41 + 16);
        v47 += 64;
        v46 = (v91 + 1);
        if (v91 == v42)
        {
          goto LABEL_49;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_38:
      v87 = v49;
      if (v44)
      {
        v99 = v10;
        v92 = 0x65696B6F6F43;
        v93 = 0xE600000000000000;
        v94 = 0x65696B6F6F63;
        v95 = 0xE600000000000000;
        sub_181DE0CB8(&v92);
        v56 = v55;

        v58 = sub_181DE90B8(v57, v56);

        swift_bridgeObjectRelease_n();
        v59 = *(v58 + 16);
        if (v59)
        {
          v84 = v24;
          v86 = v10;
          v92 = MEMORY[0x1E69E7CC0];
          sub_181DE0DB0(0, v59, 0);
          v60 = v92;
          v83 = v58;
          v61 = (v58 + 80);
          do
          {
            v63 = *(v61 - 1);
            v62 = *v61;
            v92 = v60;
            v65 = *(v60 + 16);
            v64 = *(v60 + 24);

            if (v65 >= v64 >> 1)
            {
              sub_181DE0DB0((v64 > 1), v65 + 1, 1);
              v60 = v92;
            }

            *(v60 + 16) = v65 + 1;
            v66 = v60 + 16 * v65;
            *(v66 + 32) = v63;
            *(v66 + 40) = v62;
            v61 += 7;
            --v59;
          }

          while (v59);

          v10 = v86;
          v24 = v84;
        }

        else
        {

          v60 = MEMORY[0x1E69E7CC0];
        }

        v92 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530);
        sub_181AB3DCC(&qword_1EA836F88, &qword_1EA83B530);
        sub_182AD2EC8();

        v67 = Request;
        v68 = sub_182AD2F58();
        v69 = sub_182AD2F58();

        _CFHTTPMessageAddHeaderFieldValue();

        v43 = v91;
      }

      else
      {

        v43 = v91;
      }

      v44 = 0;
      v41 = *(v10 + 16);
      v42 = *(v41 + 16);
    }

    while (v42 != v43);
  }

LABEL_49:

  v70 = Request;
  if (CFURLRequestCreateHTTPRequest())
  {
  }

  else
  {
LABEL_66:
    __break(1u);
  }
}

uint64_t sub_1821266EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_181FB7770(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_181C65504(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_181FB7770((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1821267F8(uint64_t a1, uint64_t length)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - v6;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = v2[1];
  v61 = *v2;
  v62 = v9;
  HTTPResponse.status.getter(&v63);
  v10 = v63;
  v11 = v64;
  v12 = *MEMORY[0x1E695E480];

  v13 = sub_182AD2F58();
  v47 = v11;

  v14 = sub_182AD2F58();
  v48 = v12;
  Response = CFHTTPMessageCreateResponse(v12, v10, v13, v14);

  v49 = v7;
  if ((v7 & 0x8000000000000000) != 0 && (v17 = [v8 contentDispositionEncodingFallbackArray]) != 0)
  {
    v14 = v17;
    v18 = sub_182AD33C8();

    v16 = sub_1821266EC(v18);
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  v19 = *(v9 + 16);
  v20 = (v19 + 16);
  v21 = *(v19 + 16);
  if (v21)
  {
    v7 = 0;
    length = 0;
    v55 = "authentication-info";
    v54 = 0x8000000182BDD6A0;
    v53 = Response;
    v52 = v16;
    v51 = v8;
    v50 = v9;
    do
    {
      if (v7 >= v21)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v24 = (v19 + (v7 << 6));
      v25 = *(v24 + 74);
      v27 = v24[3];
      v26 = v24[4];
      v63 = v24[2];
      v64 = v27;
      *v65 = v26;
      *&v65[10] = v25;
      v14 = v63;
      v28 = *&v65[8];
      v29 = v25 >> 48;
      v66[0] = v63;
      v66[1] = v27;
      v67 = v26;
      v68 = *&v65[8];
      v69 = v29;
      if (v7 >= *v20)
      {
        goto LABEL_58;
      }

      v59 = *(&v63 + 1);
      if (!v16)
      {
        sub_182127118(&v63, &v61);
        goto LABEL_8;
      }

      v57 = v63;
      v58 = v7;
      if (__PAIR128__(v54, 0xD000000000000013) == v27)
      {
        sub_182127118(&v63, &v61);
      }

      else
      {
        v30 = sub_182AD4268();
        sub_182127118(&v63, &v61);

        if ((v30 & 1) == 0)
        {

          v7 = v58;
          goto LABEL_8;
        }
      }

      v56 = 0;
      if ((v29 & 0x2000000000000000) != 0)
      {
        v31 = HIBYTE(v29) & 0xF;
      }

      else
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      v32 = (v28 >> 59) & 1;
      if ((v29 & 0x1000000000000000) == 0)
      {
        LOBYTE(v32) = 1;
      }

      v14 = (4 << v32);
      length = v29 & 0xFFFFFFFFFFFFFFLL;
      v16 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v33 = 15;
      do
      {
        while (1)
        {
          if (4 * v31 == v33 >> 14)
          {
            v60[0] = v28;
            v60[1] = v29;
            v16 = v52;

            Response = v53;
            v37 = v53;
            sub_182127118(&v63, &v61);
            sub_182127118(&v63, &v61);

            v38 = v37;
            sub_182127118(&v63, &v61);

            v7 = v38;

            length = v56;
            v39 = sub_182127188(v60, v16);
            v14 = &qword_1EA839C10;
            sub_181F49A88(&v63, &qword_1EA839C10);
            swift_bridgeObjectRelease_n();

            if (length)
            {
              goto LABEL_61;
            }

            goto LABEL_45;
          }

          v34 = (v33 & 0xC);
          v35 = v33;
          if (v34 == v14)
          {
            v35 = sub_18208A330(v33, v28, v29);
          }

          v7 = v35 >> 16;
          if (v35 >> 16 >= v31)
          {
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if ((v29 & 0x1000000000000000) == 0)
          {
            break;
          }

          v7 = sub_182AD31C8();
          if (v34 == v14)
          {
            goto LABEL_39;
          }

LABEL_34:
          if ((v29 & 0x1000000000000000) != 0)
          {
            goto LABEL_35;
          }

LABEL_22:
          v33 = (v33 & 0xFFFFFFFFFFFF0000) + 65540;
          if ((v7 & 0x80) != 0)
          {
            goto LABEL_43;
          }
        }

        if ((v29 & 0x2000000000000000) != 0)
        {
          v61 = v28;
          v62 = v29 & 0xFFFFFFFFFFFFFFLL;
          v7 = *(&v61 + v7);
          if (v34 == v14)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }

        v36 = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v28 & 0x1000000000000000) == 0)
        {
          v36 = sub_182AD3CF8();
        }

        v7 = *(v36 + v7);
        if (v34 != v14)
        {
          goto LABEL_34;
        }

LABEL_39:
        v33 = sub_18208A330(v33, v28, v29);
        if ((v29 & 0x1000000000000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_35:
        if (v31 <= v33 >> 16)
        {
          goto LABEL_56;
        }

        v33 = sub_182AD3178();
      }

      while ((v7 & 0x80) == 0);
LABEL_43:
      v16 = v52;

      Response = v53;
      v40 = v53;
      sub_182127118(&v63, &v61);
      sub_182127118(&v63, &v61);

      v41 = v40;
      sub_182127118(&v63, &v61);

      v7 = v41;
      length = v56;
      v39 = sub_1822897C4(v28, v29, v16, v7, v66);
      v14 = &qword_1EA839C10;
      sub_181F49A88(&v63, &qword_1EA839C10);
      swift_bridgeObjectRelease_n();
      if (length)
      {
        goto LABEL_62;
      }

LABEL_45:
      sub_181F49A88(&v63, &qword_1EA839C10);

      sub_181F49A88(&v63, &qword_1EA839C10);
      v7 = v58;
      if (v39)
      {
        sub_181F49A88(&v63, &qword_1EA839C10);
        v8 = v51;
        v9 = v50;
        goto LABEL_9;
      }

      v8 = v51;
      v9 = v50;
LABEL_8:
      v22 = Response;
      v14 = sub_182AD2F58();
      v23 = sub_182AD2F58();
      _CFHTTPMessageAddHeaderFieldValue();

      sub_181F49A88(&v63, &qword_1EA839C10);
LABEL_9:
      ++v7;
      v19 = *(v9 + 16);
      v20 = (v19 + 16);
      v21 = *(v19 + 16);
    }

    while (v7 != v21);
  }

  if ((v49 & 0x8000000000000000) != 0)
  {
    v16 = [v8 URL];
    if (!v16)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *&v63 = v8;
    *(&v63 + 1) = v49;
    v16 = &v63;
    v42 = v46;
    HTTPRequest.url.getter(v46);
    v14 = sub_182AD2058();
    length = v14[-1].length;
    if ((*(length + 48))(v42, 1, v14) == 1)
    {
      goto LABEL_59;
    }

    v16 = sub_182AD1F98();
    v43 = *(length + 8);
    length += 8;
    v43(v42, v14);
  }

  v14 = CFURLResponseCreateWithHTTPResponse();

  if (v14)
  {

    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
LABEL_60:
    __break(1u);
LABEL_61:

    v44 = length;
    length = v16;
    sub_181F49A88(&v63, v14);

    sub_181F49A88(&v63, v14);

    __break(1u);
LABEL_62:

    sub_181F49A88(&v63, v14);

    sub_181F49A88(&v63, v14);

    __break(1u);
  }
}

uint64_t sub_182127118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_182127188(uint64_t *a1, uint64_t a2)
{
  v4 = sub_182AD3008();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a1;
  v6 = a1[1];
  if ((v6 & 0x1000000000000000) != 0)
  {
    v13 = sub_18224FE14();
    v15 = v14;

    v5 = v13;
    *a1 = v13;
    a1[1] = v15;
    if ((v15 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000000000000000) == 0)
      {
        sub_182AD3CF8();
      }

      v7 = *(a2 + 16);
      v8 = a2 + 32;
      while (v7)
      {
        v8 += 8;
        sub_182AD2FF8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5A8);
        sub_181AB3DCC(&qword_1EA8363E8, &qword_1EA83A5A8);
        sub_182AD2FB8();
        --v7;
        if (v9)
        {
          v10 = sub_182AD2F58();
          v11 = sub_182AD2F58();

          _CFHTTPMessageAddHeaderFieldValue();

          return 1;
        }
      }

      return 0;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v16 = *(a2 + 16);
  v17 = a2 + 32;
  while (1)
  {
    v18 = v16-- != 0;
    v12 = v18;
    if (!v18)
    {
      break;
    }

    v17 += 8;
    sub_182AD2FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A5A8);
    sub_181AB3DCC(&qword_1EA8363E8, &qword_1EA83A5A8);
    sub_182AD2FB8();
    if (v19)
    {
      v20 = sub_182AD2F58();
      v21 = sub_182AD2F58();

      _CFHTTPMessageAddHeaderFieldValue();

      return v12;
    }
  }

  return v12;
}

uint64_t sub_182127470(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182127500, 0, 0);
}

uint64_t sub_182127500()
{
  v1 = v0[3];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[5] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    v0[6] = type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_18213A88C(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_182127628, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_182127628()
{
  v1 = v0[4];
  sub_181F7CFF0(v0[2], v1);
  type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal(0);
  swift_allocObject();
  sub_1821381E0(v1);
  sub_18213A88C(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage);
  sub_182AD2BD8();
  sub_18213A88C(&qword_1EA836608, type metadata accessor for NetworkStorage.InternalStorage.AltSvcEntryInternal);
  sub_182AD2C48();

  sub_18212B0D8();

  v2 = v0[1];

  return v2();
}

uint64_t sub_182127784()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA8364A8);
  __swift_project_value_buffer(v0, qword_1EA8364A8);
  return sub_182AD2688();
}

uint64_t sub_1821277FC@<X0>(uint64_t a1@<X8>)
{
  v67[9] = *MEMORY[0x1E69E9840];
  v2 = sub_182AD1F68();
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_182AD1DF8();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_182AD2058();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53[-v16];
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v67[0] = 0;
  v20 = [v19 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v67];

  v21 = v67[0];
  if (v20)
  {
    v66 = a1;
    sub_182AD1FD8();
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A8B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_182AF06D0;
    v24 = *MEMORY[0x1E695DDA8];
    *(inited + 32) = *MEMORY[0x1E695DDA8];
    v25 = *MEMORY[0x1E695DDB8];
    *(inited + 40) = *MEMORY[0x1E695DDB8];
    v26 = v24;
    v27 = v25;
    sub_18214D878(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_182AD1F78();

    v31 = sub_182AD1DD8();
    if (v31 == 2 || (v31 & 1) == 0 || (v32 = sub_182AD1DE8(), v32 == 2) || (v32 & 1) != 0)
    {
      (*(v64 + 8))(v7, v65);
      (*(v9 + 8))(v17, v8);
    }

    else
    {
      v34 = [objc_opt_self() mainBundle];
      v35 = [v34 bundleIdentifier];

      if (!v35)
      {
        v36 = [objc_opt_self() processInfo];
        v35 = [v36 processName];
      }

      v55 = sub_182AD2F88();
      v59 = v37;

      strcpy(v67, "HTTPStorages");
      BYTE5(v67[1]) = 0;
      HIWORD(v67[1]) = -5120;
      v54 = *MEMORY[0x1E6968F58];
      v38 = v63;
      v56 = *(v63 + 104);
      v57 = v63 + 104;
      v39 = v61;
      v56(v61);
      v58 = sub_181AC2364();
      sub_182AD2048();
      v40 = *(v38 + 8);
      v63 = v38 + 8;
      v60 = v40;
      v41 = v62;
      v40(v39, v62);
      v67[0] = v55;
      v67[1] = v59;
      (v56)(v39, v54, v41);
      sub_182AD2048();
      v60(v39, v41);
      v55 = *(v9 + 8);
      (v55)(v11, v8);

      v42 = [v18 defaultManager];
      v43 = sub_182AD1F98();
      v67[0] = 0;
      LODWORD(v41) = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:v67];

      v44 = v67[0];
      if (v41)
      {
        v67[0] = 0xD000000000000015;
        v67[1] = 0x8000000182BDE8F0;
        v45 = v61;
        v46 = v62;
        (v56)(v61, *MEMORY[0x1E6968F68], v62);
        v47 = v44;
        v48 = v66;
        sub_182AD2048();
        v60(v45, v46);
        v49 = v55;
        (v55)(v14, v8);
        (*(v64 + 8))(v7, v65);
        v49(v17, v8);
        a1 = v48;
        v30 = 0;
        return (*(v9 + 56))(a1, v30, 1, v8);
      }

      v50 = v67[0];
      v51 = sub_182AD1F08();

      swift_willThrow();
      v52 = v55;
      (v55)(v14, v8);
      (*(v64 + 8))(v7, v65);
      v52(v17, v8);
    }

    v30 = 1;
    a1 = v66;
  }

  else
  {
    v28 = v67[0];
    v29 = sub_182AD1F08();

    swift_willThrow();
    v30 = 1;
  }

  return (*(v9 + 56))(a1, v30, 1, v8);
}