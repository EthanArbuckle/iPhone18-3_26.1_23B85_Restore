void sub_23F143298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_23F133F30(&a12);
  _Unwind_Resume(a1);
}

void sub_23F144214(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v771 = &unk_28517DD38;
      sub_23F08C868(a3, &v772);
      v4 = *a2;
      v5 = v775;
      v6 = v772;
      if (!v772)
      {
        goto LABEL_957;
      }

      v7 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v772;
        v8 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v6 + 96))(&v785);
      }

      else
      {
LABEL_957:
        v785 = 0;
      }

      if (v775)
      {
        v579 = v776;
        if (v776)
        {
          v580 = v778;
          v581 = v774;
          if (v779 == 1 && v774)
          {
            v582 = v772;
            v583 = v773;
            if (v773)
            {
              atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v584 = v582;
                (v583->__on_zero_shared)(v583);
                std::__shared_weak_count::__release_weak(v583);
                v582 = v584;
              }
            }

            (*(*v582 + 88))(v582, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v581 = v774;
          }

          v585 = v579 - 1;
          if (v585)
          {
            for (i = 0; i != v585; ++i)
            {
              v587 = *(v4 + 24);
              if (*(v587 + 40) == 1)
              {
                v786 = (v587 + 16);
                if (v5)
                {
                  v588 = v5;
                  v589 = v581;
                  do
                  {
                    sub_23F2FC63C(&v786, v589++);
                    --v588;
                  }

                  while (v588);
                }
              }

              else if (v5)
              {
                for (j = 0; j != v5; ++j)
                {
                  v591 = *(v581 + j);
                  if (v591 < 0)
                  {
                    LOBYTE(v786) = -52;
                    BYTE1(v786) = v591;
                  }

                  else
                  {
                    LOBYTE(v786) = *(v581 + j);
                  }

                  v592 = *(v587 + 8);
                  std::ostream::write();
                }
              }

              v581 = (v581 + v580);
            }
          }

          v786 = v581;
          v787 = v5;
          sub_23F2F787C(v4, &v786);
        }
      }

      goto LABEL_1329;
    case 2:
      v771 = &unk_28517DFB0;
      sub_23F08DA84(a3, &v772);
      v44 = *a2;
      v162 = v775;
      v163 = v772;
      if (!v772)
      {
        goto LABEL_944;
      }

      v164 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        v163 = v772;
        v165 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v163;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v163 = v166;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v163 + 96))(&v785);
      }

      else
      {
LABEL_944:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v572 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v573 = v778;
      v310 = v774;
      if (v779 == 1 && v774)
      {
        v574 = v772;
        v575 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v575->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v576 = v574;
            (v575->__on_zero_shared)(v575);
            std::__shared_weak_count::__release_weak(v575);
            v574 = v576;
          }
        }

        (*(*v574 + 88))(v574, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v577 = v572 - 1;
      if (v577)
      {
        v578 = 2 * v573;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v578);
          --v577;
        }

        while (v577);
      }

      goto LABEL_1101;
    case 3:
      v771 = &unk_285181F28;
      sub_23F12B4EC(a3, &v772);
      v156 = *a2;
      v157 = v775;
      v158 = v772;
      if (!v772)
      {
        goto LABEL_921;
      }

      v159 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v159->__on_zero_shared)(v159);
          std::__shared_weak_count::__release_weak(v159);
        }

        v158 = v772;
        v160 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v161 = v158;
            (v160->__on_zero_shared)(v160);
            std::__shared_weak_count::__release_weak(v160);
            v158 = v161;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v158 + 96))(&v785);
      }

      else
      {
LABEL_921:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v558 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v559 = v778;
      v560 = v774;
      if (v779 == 1 && v774)
      {
        v561 = v772;
        v562 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v562->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v563 = v561;
            (v562->__on_zero_shared)(v562);
            std::__shared_weak_count::__release_weak(v562);
            v561 = v563;
          }
        }

        (*(*v561 + 88))(v561, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v560 = v774;
      }

      v564 = v558 - 1;
      if (!v564)
      {
        goto LABEL_1265;
      }

      if (v157)
      {
        v565 = 0;
        v566 = 2 * v559;
        do
        {
          for (k = 0; k != v157; ++k)
          {
            v568 = v560[k];
            v770 = v560[k];
            v569 = *(v156 + 24);
            if (*(v569 + 40) == 1)
            {
              v786 = (v569 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v568 > 0x7F)
            {
              if (v568 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v568);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v568;
              }

              v571 = *(v569 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v568;
              v570 = *(v569 + 8);
              std::ostream::write();
            }
          }

          v560 = (v560 + v566);
          ++v565;
        }

        while (v565 != v564);
LABEL_1265:
        if (v157)
        {
          v743 = 2 * v157;
          do
          {
            v744 = *v560;
            v770 = *v560;
            v745 = *(v156 + 24);
            if (*(v745 + 40) == 1)
            {
              v786 = (v745 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v744 > 0x7F)
            {
              if (v744 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v744);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v744;
              }

              v747 = *(v745 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v744;
              v746 = *(v745 + 8);
              std::ostream::write();
            }

            ++v560;
            v743 -= 2;
          }

          while (v743);
        }
      }

      goto LABEL_1329;
    case 4:
      v771 = &unk_285182020;
      sub_23F12BBC8(a3, &v772);
      v55 = *a2;
      v99 = v775;
      v100 = v772;
      if (!v772)
      {
        goto LABEL_690;
      }

      v101 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v101->__on_zero_shared)(v101);
          std::__shared_weak_count::__release_weak(v101);
        }

        v100 = v772;
        v102 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v103 = v100;
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
            v100 = v103;
          }
        }
      }

      if (v780 == 1)
      {
        (*(*v100 + 96))(&v785);
      }

      else
      {
LABEL_690:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      v417 = v776;
      if (!v776)
      {
        goto LABEL_1329;
      }

      v418 = v778;
      v331 = v774;
      if (v779 == 1 && v774)
      {
        v419 = v772;
        v420 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v421 = v419;
            (v420->__on_zero_shared)(v420);
            std::__shared_weak_count::__release_weak(v420);
            v419 = v421;
          }
        }

        (*(*v419 + 88))(v419, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v422 = v417 - 1;
      if (v422)
      {
        v423 = 0;
        v424 = 4 * v418;
        do
        {
          v425 = *(v55 + 24);
          if (*(v425 + 40) == 1)
          {
            v786 = (v425 + 16);
            if (v99)
            {
              v426 = 4 * v99;
              v427 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v427++);
                v426 -= 4;
              }

              while (v426);
            }
          }

          else if (v99)
          {
            v428 = 0;
            do
            {
              v429 = *(v331 + v428);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v429);
              v430 = *(v425 + 8);
              std::ostream::write();
              v428 += 4;
            }

            while (4 * v99 != v428);
          }

          v331 = (v331 + v424);
          ++v423;
        }

        while (v423 != v422);
      }

      goto LABEL_1199;
    case 5:
      v771 = &unk_285182118;
      sub_23F12C2A4(a3, &v772);
      v22 = *a2;
      v141 = v782;
      v142 = v772;
      if (!v772)
      {
        goto LABEL_853;
      }

      v143 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
        }

        v142 = v772;
        v144 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v145 = v142;
            (v144->__on_zero_shared)(v144);
            std::__shared_weak_count::__release_weak(v144);
            v142 = v145;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v142 + 96))(&v785);
      }

      else
      {
LABEL_853:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v517 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v518 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v519 = v772;
        v520 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v520->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v521 = v519;
            (v520->__on_zero_shared)(v520);
            std::__shared_weak_count::__release_weak(v520);
            v519 = v521;
          }
        }

        (*(*v519 + 88))(v519, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (2 * v141);
      v522 = v517 - 1;
      if (v522)
      {
        for (m = 0; m != v522; ++m)
        {
          v524 = *(v22 + 24);
          if (*(v524 + 40) == 1)
          {
            v786 = (v524 + 16);
            if (v256)
            {
              v525 = v256;
              v526 = v252;
              do
              {
                sub_23F2FC63C(&v786, v526++);
                --v525;
              }

              while (v525);
            }
          }

          else if (v256)
          {
            for (n = 0; n != v256; ++n)
            {
              v528 = *(v252 + n);
              if (v528 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v528;
              }

              else
              {
                LOBYTE(v786) = *(v252 + n);
              }

              v529 = *(v524 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v518);
        }
      }

      goto LABEL_1198;
    case 6:
      v771 = &unk_285182210;
      sub_23F12CA10(a3, &v772);
      v44 = *a2;
      v94 = v782;
      v95 = v772;
      if (!v772)
      {
        goto LABEL_676;
      }

      v96 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v95 = v772;
        v97 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v98 = v95;
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
            v95 = v98;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v95 + 96))(&v785);
      }

      else
      {
LABEL_676:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v410 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v411 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v412 = v772;
        v413 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v413->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v414 = v412;
            (v413->__on_zero_shared)(v413);
            std::__shared_weak_count::__release_weak(v413);
            v412 = v414;
          }
        }

        (*(*v412 + 88))(v412, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (2 * v94);
      v415 = v410 - 1;
      if (v415)
      {
        v416 = 2 * v411;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v416);
          --v415;
        }

        while (v415);
      }

      goto LABEL_1101;
    case 7:
      v771 = &unk_285182308;
      sub_23F12D180(a3, &v772);
      v66 = *a2;
      v67 = v782;
      v68 = v772;
      if (!v772)
      {
        goto LABEL_576;
      }

      v69 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v772;
        v70 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v68 + 96))(&v785);
      }

      else
      {
LABEL_576:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v351 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v352 = v781;
      v353 = v774;
      if (v783 == 1 && v774)
      {
        v354 = v772;
        v355 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v355->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v356 = v354;
            (v355->__on_zero_shared)(v355);
            std::__shared_weak_count::__release_weak(v355);
            v354 = v356;
          }
        }

        (*(*v354 + 88))(v354, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v353 = v774;
      }

      v357 = (2 * v67);
      v358 = v351 - 1;
      if (!v358)
      {
        goto LABEL_1221;
      }

      if (v357)
      {
        v359 = 0;
        v360 = 2 * v352;
        do
        {
          v361 = 0;
          do
          {
            v362 = v353[v361];
            v770 = v353[v361];
            v363 = *(v66 + 24);
            if (*(v363 + 40) == 1)
            {
              v786 = (v363 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v362 > 0x7F)
            {
              if (v362 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v362);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v362;
              }

              v365 = *(v363 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v362;
              v364 = *(v363 + 8);
              std::ostream::write();
            }

            ++v361;
          }

          while (v357 != v361);
          v353 = (v353 + v360);
          ++v359;
        }

        while (v359 != v358);
LABEL_1221:
        if (v357)
        {
          v723 = 2 * v357;
          do
          {
            v724 = *v353;
            v770 = *v353;
            v725 = *(v66 + 24);
            if (*(v725 + 40) == 1)
            {
              v786 = (v725 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v724 > 0x7F)
            {
              if (v724 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v724);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v724;
              }

              v727 = *(v725 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v724;
              v726 = *(v725 + 8);
              std::ostream::write();
            }

            ++v353;
            v723 -= 2;
          }

          while (v723);
        }
      }

      goto LABEL_1329;
    case 8:
      v771 = &unk_285182400;
      sub_23F12D8F0(a3, &v772);
      v55 = *a2;
      v151 = v782;
      v152 = v772;
      if (!v772)
      {
        goto LABEL_899;
      }

      v153 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v153->__on_zero_shared)(v153);
          std::__shared_weak_count::__release_weak(v153);
        }

        v152 = v772;
        v154 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v155 = v152;
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
            v152 = v155;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v152 + 96))(&v785);
      }

      else
      {
LABEL_899:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v544 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v545 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v546 = v772;
        v547 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v547->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v548 = v546;
            (v547->__on_zero_shared)(v547);
            std::__shared_weak_count::__release_weak(v547);
            v546 = v548;
          }
        }

        (*(*v546 + 88))(v546, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (2 * v151);
      v549 = v544 - 1;
      if (v549)
      {
        v550 = 0;
        v551 = 4 * v545;
        do
        {
          v552 = *(v55 + 24);
          if (*(v552 + 40) == 1)
          {
            v786 = (v552 + 16);
            if (v99)
            {
              v553 = 4 * v99;
              v554 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v554++);
                v553 -= 4;
              }

              while (v553);
            }
          }

          else if (v99)
          {
            v555 = 0;
            do
            {
              v556 = *(v331 + v555);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v556);
              v557 = *(v552 + 8);
              std::ostream::write();
              v555 += 4;
            }

            while (4 * v99 != v555);
          }

          v331 = (v331 + v551);
          ++v550;
        }

        while (v550 != v549);
      }

      goto LABEL_1199;
    case 9:
      v771 = &unk_2851824F8;
      sub_23F12E060(a3, &v772);
      v135 = *a2;
      v136 = v782;
      v137 = v772;
      if (!v772)
      {
        goto LABEL_829;
      }

      v138 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v138->__on_zero_shared)(v138);
          std::__shared_weak_count::__release_weak(v138);
        }

        v137 = v772;
        v139 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v140 = v137;
            (v139->__on_zero_shared)(v139);
            std::__shared_weak_count::__release_weak(v139);
            v137 = v140;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v137 + 96))(&v785);
      }

      else
      {
LABEL_829:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v502 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v503 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v505 = v772;
        v506 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v506->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v507 = v505;
            (v506->__on_zero_shared)(v506);
            std::__shared_weak_count::__release_weak(v506);
            v505 = v507;
          }
        }

        (*(*v505 + 88))(v505, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v136);
      v509 = v502 - 1;
      if (v509)
      {
        for (ii = 0; ii != v509; ++ii)
        {
          v511 = *(v135 + 24);
          if (*(v511 + 40) == 1)
          {
            v786 = (v511 + 16);
            if (v136)
            {
              v512 = (3 * v136);
              v513 = v504;
              do
              {
                sub_23F2FC63C(&v786, v513++);
                --v512;
              }

              while (v512);
            }
          }

          else if (v136)
          {
            v514 = 0;
            do
            {
              v515 = *(v504 + v514);
              if (v515 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v515;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v514);
              }

              v516 = *(v511 + 8);
              std::ostream::write();
              ++v514;
            }

            while (v508 != v514);
          }

          v504 = (v504 + v503);
        }
      }

      goto LABEL_1209;
    case 10:
      v771 = &unk_2851825F0;
      sub_23F12E7CC(a3, &v772);
      v44 = *a2;
      v178 = v782;
      v179 = v772;
      if (!v772)
      {
        goto LABEL_1028;
      }

      v180 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v180->__on_zero_shared)(v180);
          std::__shared_weak_count::__release_weak(v180);
        }

        v179 = v772;
        v181 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v182 = v179;
            (v181->__on_zero_shared)(v181);
            std::__shared_weak_count::__release_weak(v181);
            v179 = v182;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v179 + 96))(&v785);
      }

      else
      {
LABEL_1028:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v621 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v622 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v623 = v772;
        v624 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v624->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v625 = v623;
            (v624->__on_zero_shared)(v624);
            std::__shared_weak_count::__release_weak(v624);
            v623 = v625;
          }
        }

        (*(*v623 + 88))(v623, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v178);
      v626 = v621 - 1;
      if (v626)
      {
        v627 = 2 * v622;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v627);
          --v626;
        }

        while (v626);
      }

      goto LABEL_1101;
    case 11:
      v771 = &unk_2851826E8;
      sub_23F12EF3C(a3, &v772);
      v172 = *a2;
      v173 = v782;
      v174 = v772;
      if (!v772)
      {
        goto LABEL_1004;
      }

      v175 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v772;
        v176 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v174 + 96))(&v785);
      }

      else
      {
LABEL_1004:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v606 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v607 = v781;
      v608 = v774;
      if (v783 == 1 && v774)
      {
        v609 = v772;
        v610 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v610->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v611 = v609;
            (v610->__on_zero_shared)(v610);
            std::__shared_weak_count::__release_weak(v610);
            v609 = v611;
          }
        }

        (*(*v609 + 88))(v609, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v608 = v774;
      }

      v612 = (3 * v173);
      v613 = v606 - 1;
      if (!v613)
      {
        goto LABEL_1306;
      }

      if (v173)
      {
        v614 = 0;
        v615 = 2 * v607;
        do
        {
          v616 = 0;
          do
          {
            v617 = v608[v616];
            v770 = v608[v616];
            v618 = *(v172 + 24);
            if (*(v618 + 40) == 1)
            {
              v786 = (v618 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v617 > 0x7F)
            {
              if (v617 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v617);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v617;
              }

              v620 = *(v618 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v617;
              v619 = *(v618 + 8);
              std::ostream::write();
            }

            ++v616;
          }

          while (3 * v173 != v616);
          v608 = (v608 + v615);
          ++v614;
        }

        while (v614 != v613);
        v612 = (3 * v173);
LABEL_1306:
        if (v173)
        {
          v758 = 2 * v612;
          do
          {
            v759 = *v608;
            v770 = *v608;
            v760 = *(v172 + 24);
            if (*(v760 + 40) == 1)
            {
              v786 = (v760 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v759 > 0x7F)
            {
              if (v759 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v759);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v759;
              }

              v762 = *(v760 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v759;
              v761 = *(v760 + 8);
              std::ostream::write();
            }

            ++v608;
            v758 -= 2;
          }

          while (v758);
        }
      }

      goto LABEL_1329;
    case 12:
      v771 = &unk_2851827E0;
      sub_23F12F6AC(a3, &v772);
      v28 = *a2;
      v29 = v782;
      v30 = v772;
      if (!v772)
      {
        goto LABEL_434;
      }

      v31 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v772;
        v32 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v30 + 96))(&v785);
      }

      else
      {
LABEL_434:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v265 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v266 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v268 = v772;
        v269 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v269->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v270 = v268;
            (v269->__on_zero_shared)(v269);
            std::__shared_weak_count::__release_weak(v269);
            v268 = v270;
          }
        }

        (*(*v268 + 88))(v268, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v29);
      v272 = v265 - 1;
      if (v272)
      {
        v273 = 0;
        v274 = 4 * v266;
        do
        {
          v275 = *(v28 + 24);
          if (*(v275 + 40) == 1)
          {
            v786 = (v275 + 16);
            if (v29)
            {
              v276 = 4 * (3 * v29);
              v277 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v277++);
                v276 -= 4;
              }

              while (v276);
            }
          }

          else if (v29)
          {
            v278 = 0;
            do
            {
              v279 = *(v267 + v278);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v279);
              v280 = *(v275 + 8);
              std::ostream::write();
              v278 += 4;
            }

            while (4 * (3 * v29) != v278);
          }

          v267 = (v267 + v274);
          ++v273;
        }

        while (v273 != v272);
        v271 = (3 * v29);
      }

      goto LABEL_1292;
    case 13:
      v771 = &unk_2851828D8;
      sub_23F12FE1C(a3, &v772);
      v22 = *a2;
      v50 = v782;
      v51 = v772;
      if (!v772)
      {
        goto LABEL_516;
      }

      v52 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
        }

        v51 = v772;
        v53 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v54 = v51;
            (v53->__on_zero_shared)(v53);
            std::__shared_weak_count::__release_weak(v53);
            v51 = v54;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v51 + 96))(&v785);
      }

      else
      {
LABEL_516:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v316 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v317 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v318 = v772;
        v319 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v319->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v320 = v318;
            (v319->__on_zero_shared)(v319);
            std::__shared_weak_count::__release_weak(v319);
            v318 = v320;
          }
        }

        (*(*v318 + 88))(v318, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v50);
      v321 = v316 - 1;
      if (v321)
      {
        for (jj = 0; jj != v321; ++jj)
        {
          v323 = *(v22 + 24);
          if (*(v323 + 40) == 1)
          {
            v786 = (v323 + 16);
            if (v256)
            {
              v324 = v256;
              v325 = v252;
              do
              {
                sub_23F2FC63C(&v786, v325++);
                --v324;
              }

              while (v324);
            }
          }

          else if (v256)
          {
            for (kk = 0; kk != v256; ++kk)
            {
              v327 = *(v252 + kk);
              if (v327 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v327;
              }

              else
              {
                LOBYTE(v786) = *(v252 + kk);
              }

              v328 = *(v323 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v317);
        }
      }

      goto LABEL_1198;
    case 14:
      v771 = &unk_2851829D0;
      sub_23F130588(a3, &v772);
      v44 = *a2;
      v45 = v782;
      v46 = v772;
      if (!v772)
      {
        goto LABEL_502;
      }

      v47 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        v46 = v772;
        v48 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v49 = v46;
            (v48->__on_zero_shared)(v48);
            std::__shared_weak_count::__release_weak(v48);
            v46 = v49;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v46 + 96))(&v785);
      }

      else
      {
LABEL_502:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v308 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v309 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v311 = v772;
        v312 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v312->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v313 = v311;
            (v312->__on_zero_shared)(v312);
            std::__shared_weak_count::__release_weak(v312);
            v311 = v313;
          }
        }

        (*(*v311 + 88))(v311, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v45);
      v314 = v308 - 1;
      if (v314)
      {
        v315 = 2 * v309;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v315);
          --v314;
        }

        while (v314);
      }

      goto LABEL_1101;
    case 15:
      v771 = &unk_285182AC8;
      sub_23F130CF8(a3, &v772);
      v198 = *a2;
      v199 = v782;
      v200 = v772;
      if (!v772)
      {
        goto LABEL_1102;
      }

      v201 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v201->__on_zero_shared)(v201);
          std::__shared_weak_count::__release_weak(v201);
        }

        v200 = v772;
        v202 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v203 = v200;
            (v202->__on_zero_shared)(v202);
            std::__shared_weak_count::__release_weak(v202);
            v200 = v203;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v200 + 96))(&v785);
      }

      else
      {
LABEL_1102:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v662 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v663 = v781;
      v664 = v774;
      if (v783 == 1 && v774)
      {
        v665 = v772;
        v666 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v666->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v667 = v665;
            (v666->__on_zero_shared)(v666);
            std::__shared_weak_count::__release_weak(v666);
            v665 = v667;
          }
        }

        (*(*v665 + 88))(v665, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v664 = v774;
      }

      v668 = (4 * v199);
      v669 = v662 - 1;
      if (!v669)
      {
        goto LABEL_1276;
      }

      if (v668)
      {
        v670 = 0;
        v671 = 2 * v663;
        do
        {
          v672 = 0;
          do
          {
            v673 = v664[v672];
            v770 = v664[v672];
            v674 = *(v198 + 24);
            if (*(v674 + 40) == 1)
            {
              v786 = (v674 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v673 > 0x7F)
            {
              if (v673 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v673);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v673;
              }

              v676 = *(v674 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v673;
              v675 = *(v674 + 8);
              std::ostream::write();
            }

            ++v672;
          }

          while (v668 != v672);
          v664 = (v664 + v671);
          ++v670;
        }

        while (v670 != v669);
LABEL_1276:
        if (v668)
        {
          v748 = 2 * v668;
          do
          {
            v749 = *v664;
            v770 = *v664;
            v750 = *(v198 + 24);
            if (*(v750 + 40) == 1)
            {
              v786 = (v750 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v749 > 0x7F)
            {
              if (v749 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v749);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v749;
              }

              v752 = *(v750 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v749;
              v751 = *(v750 + 8);
              std::ostream::write();
            }

            ++v664;
            v748 -= 2;
          }

          while (v748);
        }
      }

      goto LABEL_1329;
    case 16:
      v771 = &unk_285182BC0;
      sub_23F131468(a3, &v772);
      v55 = *a2;
      v146 = v782;
      v147 = v772;
      if (!v772)
      {
        goto LABEL_877;
      }

      v148 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v148->__on_zero_shared)(v148);
          std::__shared_weak_count::__release_weak(v148);
        }

        v147 = v772;
        v149 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v150 = v147;
            (v149->__on_zero_shared)(v149);
            std::__shared_weak_count::__release_weak(v149);
            v147 = v150;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v147 + 96))(&v785);
      }

      else
      {
LABEL_877:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v530 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v531 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v532 = v772;
        v533 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v533->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v534 = v532;
            (v533->__on_zero_shared)(v533);
            std::__shared_weak_count::__release_weak(v533);
            v532 = v534;
          }
        }

        (*(*v532 + 88))(v532, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v146);
      v535 = v530 - 1;
      if (v535)
      {
        v536 = 0;
        v537 = 4 * v531;
        do
        {
          v538 = *(v55 + 24);
          if (*(v538 + 40) == 1)
          {
            v786 = (v538 + 16);
            if (v99)
            {
              v539 = 4 * v99;
              v540 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v540++);
                v539 -= 4;
              }

              while (v539);
            }
          }

          else if (v99)
          {
            v541 = 0;
            do
            {
              v542 = *(v331 + v541);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v542);
              v543 = *(v538 + 8);
              std::ostream::write();
              v541 += 4;
            }

            while (4 * v99 != v541);
          }

          v331 = (v331 + v537);
          ++v536;
        }

        while (v536 != v535);
      }

      goto LABEL_1199;
    case 17:
      v771 = &unk_285182CB8;
      sub_23F131BD8(a3, &v772);
      v135 = *a2;
      v204 = v782;
      v205 = v772;
      if (!v772)
      {
        goto LABEL_1126;
      }

      v206 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        v205 = v772;
        v207 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v205;
            (v207->__on_zero_shared)(v207);
            std::__shared_weak_count::__release_weak(v207);
            v205 = v208;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v205 + 96))(&v785);
      }

      else
      {
LABEL_1126:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v677 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v678 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v679 = v772;
        v680 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v680->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v681 = v679;
            (v680->__on_zero_shared)(v680);
            std::__shared_weak_count::__release_weak(v680);
            v679 = v681;
          }
        }

        (*(*v679 + 88))(v679, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v204);
      v682 = v677 - 1;
      if (v682)
      {
        for (mm = 0; mm != v682; ++mm)
        {
          v684 = *(v135 + 24);
          if (*(v684 + 40) == 1)
          {
            v786 = (v684 + 16);
            if (v204)
            {
              v685 = (3 * v204);
              v686 = v504;
              do
              {
                sub_23F2FC63C(&v786, v686++);
                --v685;
              }

              while (v685);
            }
          }

          else if (v204)
          {
            v687 = 0;
            do
            {
              v688 = *(v504 + v687);
              if (v688 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v688;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v687);
              }

              v689 = *(v684 + 8);
              std::ostream::write();
              ++v687;
            }

            while (v508 != v687);
          }

          v504 = (v504 + v678);
        }
      }

      goto LABEL_1209;
    case 18:
      v771 = &unk_285182DB0;
      sub_23F132344(a3, &v772);
      v44 = *a2;
      v61 = v782;
      v62 = v772;
      if (!v772)
      {
        goto LABEL_562;
      }

      v63 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v63->__on_zero_shared)(v63);
          std::__shared_weak_count::__release_weak(v63);
        }

        v62 = v772;
        v64 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v65 = v62;
            (v64->__on_zero_shared)(v64);
            std::__shared_weak_count::__release_weak(v64);
            v62 = v65;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v62 + 96))(&v785);
      }

      else
      {
LABEL_562:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v344 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v345 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v346 = v772;
        v347 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v347->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v348 = v346;
            (v347->__on_zero_shared)(v347);
            std::__shared_weak_count::__release_weak(v347);
            v346 = v348;
          }
        }

        (*(*v346 + 88))(v346, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v61);
      v349 = v344 - 1;
      if (v349)
      {
        v350 = 2 * v345;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v350);
          --v349;
        }

        while (v349);
      }

      goto LABEL_1101;
    case 19:
      v771 = &unk_285182EA8;
      sub_23F132AB4(a3, &v772);
      v16 = *a2;
      v17 = v782;
      v18 = v772;
      if (!v772)
      {
        goto LABEL_386;
      }

      v19 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v772;
        v20 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v18 + 96))(&v785);
      }

      else
      {
LABEL_386:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v235 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v236 = v781;
      v237 = v774;
      if (v783 == 1 && v774)
      {
        v238 = v772;
        v239 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v240 = v238;
            (v239->__on_zero_shared)(v239);
            std::__shared_weak_count::__release_weak(v239);
            v238 = v240;
          }
        }

        (*(*v238 + 88))(v238, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v237 = v774;
      }

      v241 = (3 * v17);
      v242 = v235 - 1;
      if (!v242)
      {
        goto LABEL_1294;
      }

      if (v17)
      {
        v243 = 0;
        v244 = 2 * v236;
        do
        {
          v245 = 0;
          do
          {
            v246 = v237[v245];
            v770 = v237[v245];
            v247 = *(v16 + 24);
            if (*(v247 + 40) == 1)
            {
              v786 = (v247 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v246 > 0x7F)
            {
              if (v246 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v246);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v246;
              }

              v249 = *(v247 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v246;
              v248 = *(v247 + 8);
              std::ostream::write();
            }

            ++v245;
          }

          while (3 * v17 != v245);
          v237 = (v237 + v244);
          ++v243;
        }

        while (v243 != v242);
        v241 = (3 * v17);
LABEL_1294:
        if (v17)
        {
          v753 = 2 * v241;
          do
          {
            v754 = *v237;
            v770 = *v237;
            v755 = *(v16 + 24);
            if (*(v755 + 40) == 1)
            {
              v786 = (v755 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v754 > 0x7F)
            {
              if (v754 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v754);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v754;
              }

              v757 = *(v755 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v754;
              v756 = *(v755 + 8);
              std::ostream::write();
            }

            ++v237;
            v753 -= 2;
          }

          while (v753);
        }
      }

      goto LABEL_1329;
    case 20:
      v771 = &unk_285182FA0;
      sub_23F133224(a3, &v772);
      v28 = *a2;
      v188 = v782;
      v189 = v772;
      if (!v772)
      {
        goto LABEL_1066;
      }

      v190 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v190->__on_zero_shared)(v190);
          std::__shared_weak_count::__release_weak(v190);
        }

        v189 = v772;
        v191 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v189;
            (v191->__on_zero_shared)(v191);
            std::__shared_weak_count::__release_weak(v191);
            v189 = v192;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v189 + 96))(&v785);
      }

      else
      {
LABEL_1066:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v641 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v642 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v643 = v772;
        v644 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v644->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v645 = v643;
            (v644->__on_zero_shared)(v644);
            std::__shared_weak_count::__release_weak(v644);
            v643 = v645;
          }
        }

        (*(*v643 + 88))(v643, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v188);
      v646 = v641 - 1;
      if (v646)
      {
        v647 = 0;
        v648 = 4 * v642;
        do
        {
          v649 = *(v28 + 24);
          if (*(v649 + 40) == 1)
          {
            v786 = (v649 + 16);
            if (v188)
            {
              v650 = 4 * (3 * v188);
              v651 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v651++);
                v650 -= 4;
              }

              while (v650);
            }
          }

          else if (v188)
          {
            v652 = 0;
            do
            {
              v653 = *(v267 + v652);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v653);
              v654 = *(v649 + 8);
              std::ostream::write();
              v652 += 4;
            }

            while (4 * (3 * v188) != v652);
          }

          v267 = (v267 + v648);
          ++v647;
        }

        while (v647 != v646);
        v271 = (3 * v188);
      }

      goto LABEL_1292;
    case 21:
      v771 = &unk_28517E0A8;
      sub_23F08E4D4(a3, &v772);
      v135 = *a2;
      v215 = v782;
      v216 = v772;
      if (!v772)
      {
        goto LABEL_1174;
      }

      v217 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v772;
        v218 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v216 + 96))(&v785);
      }

      else
      {
LABEL_1174:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v705 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v706 = v781;
      v504 = v774;
      if (v783 == 1 && v774)
      {
        v707 = v772;
        v708 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v708->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v709 = v707;
            (v708->__on_zero_shared)(v708);
            std::__shared_weak_count::__release_weak(v708);
            v707 = v709;
          }
        }

        (*(*v707 + 88))(v707, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v504 = v774;
      }

      v508 = (3 * v215);
      v710 = v705 - 1;
      if (v710)
      {
        for (nn = 0; nn != v710; ++nn)
        {
          v712 = *(v135 + 24);
          if (*(v712 + 40) == 1)
          {
            v786 = (v712 + 16);
            if (v215)
            {
              v713 = (3 * v215);
              v714 = v504;
              do
              {
                sub_23F2FC63C(&v786, v714++);
                --v713;
              }

              while (v713);
            }
          }

          else if (v215)
          {
            v715 = 0;
            do
            {
              v716 = *(v504 + v715);
              if (v716 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v716;
              }

              else
              {
                LOBYTE(v786) = *(v504 + v715);
              }

              v717 = *(v712 + 8);
              std::ostream::write();
              ++v715;
            }

            while (v508 != v715);
          }

          v504 = (v504 + v706);
        }
      }

LABEL_1209:
      v786 = v504;
      v787 = v508;
      sub_23F2F787C(v135, &v786);
      goto LABEL_1329;
    case 22:
      v771 = &unk_285183098;
      sub_23F133994(a3, &v772);
      v44 = *a2;
      v78 = v782;
      v79 = v772;
      if (!v772)
      {
        goto LABEL_624;
      }

      v80 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v772;
        v81 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v79 + 96))(&v785);
      }

      else
      {
LABEL_624:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v381 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v382 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v383 = v772;
        v384 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v384->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v385 = v383;
            (v384->__on_zero_shared)(v384);
            std::__shared_weak_count::__release_weak(v384);
            v383 = v385;
          }
        }

        (*(*v383 + 88))(v383, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (3 * v78);
      v386 = v381 - 1;
      if (v386)
      {
        v387 = 2 * v382;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v387);
          --v386;
        }

        while (v386);
      }

      goto LABEL_1101;
    case 23:
      v771 = &unk_285183190;
      sub_23F134104(a3, &v772);
      v209 = *a2;
      v210 = v782;
      v211 = v772;
      if (!v772)
      {
        goto LABEL_1150;
      }

      v212 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        v211 = v772;
        v213 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v214 = v211;
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
            v211 = v214;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v211 + 96))(&v785);
      }

      else
      {
LABEL_1150:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v690 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v691 = v781;
      v692 = v774;
      if (v783 == 1 && v774)
      {
        v693 = v772;
        v694 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v695 = v693;
            (v694->__on_zero_shared)(v694);
            std::__shared_weak_count::__release_weak(v694);
            v693 = v695;
          }
        }

        (*(*v693 + 88))(v693, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v692 = v774;
      }

      v696 = (3 * v210);
      v697 = v690 - 1;
      if (!v697)
      {
        goto LABEL_1318;
      }

      if (v210)
      {
        v698 = 0;
        v699 = 2 * v691;
        do
        {
          v700 = 0;
          do
          {
            v701 = v692[v700];
            v770 = v692[v700];
            v702 = *(v209 + 24);
            if (*(v702 + 40) == 1)
            {
              v786 = (v702 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v701 > 0x7F)
            {
              if (v701 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v701);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v701;
              }

              v704 = *(v702 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v701;
              v703 = *(v702 + 8);
              std::ostream::write();
            }

            ++v700;
          }

          while (3 * v210 != v700);
          v692 = (v692 + v699);
          ++v698;
        }

        while (v698 != v697);
        v696 = (3 * v210);
LABEL_1318:
        if (v210)
        {
          v763 = 2 * v696;
          do
          {
            v764 = *v692;
            v770 = *v692;
            v765 = *(v209 + 24);
            if (*(v765 + 40) == 1)
            {
              v786 = (v765 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v764 > 0x7F)
            {
              if (v764 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v764);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v764;
              }

              v767 = *(v765 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v764;
              v766 = *(v765 + 8);
              std::ostream::write();
            }

            ++v692;
            v763 -= 2;
          }

          while (v763);
        }
      }

      goto LABEL_1329;
    case 24:
      v771 = &unk_285183288;
      sub_23F134874(a3, &v772);
      v28 = *a2;
      v39 = v782;
      v40 = v772;
      if (!v772)
      {
        goto LABEL_480;
      }

      v41 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v41->__on_zero_shared)(v41);
          std::__shared_weak_count::__release_weak(v41);
        }

        v40 = v772;
        v42 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v43 = v40;
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
            v40 = v43;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v40 + 96))(&v785);
      }

      else
      {
LABEL_480:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v294 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v295 = v781;
      v267 = v774;
      if (v783 == 1 && v774)
      {
        v296 = v772;
        v297 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v297->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v298 = v296;
            (v297->__on_zero_shared)(v297);
            std::__shared_weak_count::__release_weak(v297);
            v296 = v298;
          }
        }

        (*(*v296 + 88))(v296, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v267 = v774;
      }

      v271 = (3 * v39);
      v299 = v294 - 1;
      if (v299)
      {
        v300 = 0;
        v301 = 4 * v295;
        do
        {
          v302 = *(v28 + 24);
          if (*(v302 + 40) == 1)
          {
            v786 = (v302 + 16);
            if (v39)
            {
              v303 = 4 * (3 * v39);
              v304 = v267;
              do
              {
                sub_23F2FE06C(&v770, &v786, v304++);
                v303 -= 4;
              }

              while (v303);
            }
          }

          else if (v39)
          {
            v305 = 0;
            do
            {
              v306 = *(v267 + v305);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v306);
              v307 = *(v302 + 8);
              std::ostream::write();
              v305 += 4;
            }

            while (4 * (3 * v39) != v305);
          }

          v267 = (v267 + v301);
          ++v300;
        }

        while (v300 != v299);
        v271 = (3 * v39);
      }

LABEL_1292:
      v786 = v267;
      v787 = v271;
      sub_23F2F7A44(v28, &v786);
      goto LABEL_1329;
    case 25:
      v771 = &unk_285183380;
      sub_23F134FE4(a3, &v772);
      v22 = *a2;
      v23 = v782;
      v24 = v772;
      if (!v772)
      {
        goto LABEL_410;
      }

      v25 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v772;
        v26 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v24 + 96))(&v785);
      }

      else
      {
LABEL_410:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v250 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v251 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v253 = v772;
        v254 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v254->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v255 = v253;
            (v254->__on_zero_shared)(v254);
            std::__shared_weak_count::__release_weak(v254);
            v253 = v255;
          }
        }

        (*(*v253 + 88))(v253, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v23);
      v257 = v250 - 1;
      if (v257)
      {
        for (i1 = 0; i1 != v257; ++i1)
        {
          v259 = *(v22 + 24);
          if (*(v259 + 40) == 1)
          {
            v786 = (v259 + 16);
            if (v256)
            {
              v260 = v256;
              v261 = v252;
              do
              {
                sub_23F2FC63C(&v786, v261++);
                --v260;
              }

              while (v260);
            }
          }

          else if (v256)
          {
            for (i2 = 0; i2 != v256; ++i2)
            {
              v263 = *(v252 + i2);
              if (v263 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v263;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i2);
              }

              v264 = *(v259 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v251);
        }
      }

      goto LABEL_1198;
    case 26:
      v771 = &unk_285183478;
      sub_23F135750(a3, &v772);
      v44 = *a2;
      v83 = v782;
      v84 = v772;
      if (!v772)
      {
        goto LABEL_638;
      }

      v85 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v772;
        v86 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v84 + 96))(&v785);
      }

      else
      {
LABEL_638:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v388 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v389 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v390 = v772;
        v391 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v391->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v392 = v390;
            (v391->__on_zero_shared)(v391);
            std::__shared_weak_count::__release_weak(v391);
            v390 = v392;
          }
        }

        (*(*v390 + 88))(v390, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v83);
      v393 = v388 - 1;
      if (v393)
      {
        v394 = 2 * v389;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v394);
          --v393;
        }

        while (v393);
      }

      goto LABEL_1101;
    case 27:
      v771 = &unk_285183570;
      sub_23F135EC0(a3, &v772);
      v10 = *a2;
      v11 = v782;
      v12 = v772;
      if (!v772)
      {
        goto LABEL_362;
      }

      v13 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v772;
        v14 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v12 + 96))(&v785);
      }

      else
      {
LABEL_362:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v220 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v221 = v781;
      v222 = v774;
      if (v783 == 1 && v774)
      {
        v223 = v772;
        v224 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v223;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v223 = v225;
          }
        }

        (*(*v223 + 88))(v223, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v222 = v774;
      }

      v226 = (4 * v11);
      v227 = v220 - 1;
      if (!v227)
      {
        goto LABEL_1210;
      }

      if (v226)
      {
        v228 = 0;
        v229 = 2 * v221;
        do
        {
          v230 = 0;
          do
          {
            v231 = v222[v230];
            v770 = v222[v230];
            v232 = *(v10 + 24);
            if (*(v232 + 40) == 1)
            {
              v786 = (v232 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v231 > 0x7F)
            {
              if (v231 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v231);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v231;
              }

              v234 = *(v232 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v231;
              v233 = *(v232 + 8);
              std::ostream::write();
            }

            ++v230;
          }

          while (v226 != v230);
          v222 = (v222 + v229);
          ++v228;
        }

        while (v228 != v227);
LABEL_1210:
        if (v226)
        {
          v718 = 2 * v226;
          do
          {
            v719 = *v222;
            v770 = *v222;
            v720 = *(v10 + 24);
            if (*(v720 + 40) == 1)
            {
              v786 = (v720 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v719 > 0x7F)
            {
              if (v719 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v719);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v719;
              }

              v722 = *(v720 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v719;
              v721 = *(v720 + 8);
              std::ostream::write();
            }

            ++v222;
            v718 -= 2;
          }

          while (v718);
        }
      }

      goto LABEL_1329;
    case 28:
      v771 = &unk_285183668;
      sub_23F136630(a3, &v772);
      v55 = *a2;
      v104 = v782;
      v105 = v772;
      if (!v772)
      {
        goto LABEL_711;
      }

      v106 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v772;
        v107 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v108 = v105;
            (v107->__on_zero_shared)(v107);
            std::__shared_weak_count::__release_weak(v107);
            v105 = v108;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v105 + 96))(&v785);
      }

      else
      {
LABEL_711:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v431 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v432 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v433 = v772;
        v434 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v434->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v435 = v433;
            (v434->__on_zero_shared)(v434);
            std::__shared_weak_count::__release_weak(v434);
            v433 = v435;
          }
        }

        (*(*v433 + 88))(v433, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v104);
      v436 = v431 - 1;
      if (v436)
      {
        v437 = 0;
        v438 = 4 * v432;
        do
        {
          v439 = *(v55 + 24);
          if (*(v439 + 40) == 1)
          {
            v786 = (v439 + 16);
            if (v99)
            {
              v440 = 4 * v99;
              v441 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v441++);
                v440 -= 4;
              }

              while (v440);
            }
          }

          else if (v99)
          {
            v442 = 0;
            do
            {
              v443 = *(v331 + v442);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v443);
              v444 = *(v439 + 8);
              std::ostream::write();
              v442 += 4;
            }

            while (4 * v99 != v442);
          }

          v331 = (v331 + v438);
          ++v437;
        }

        while (v437 != v436);
      }

      goto LABEL_1199;
    case 29:
      v771 = &unk_285183760;
      sub_23F136DA0(a3, &v772);
      v22 = *a2;
      v34 = v782;
      v35 = v772;
      if (!v772)
      {
        goto LABEL_456;
      }

      v36 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
        }

        v35 = v772;
        v37 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v38 = v35;
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
            v35 = v38;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v35 + 96))(&v785);
      }

      else
      {
LABEL_456:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v281 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v282 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v283 = v772;
        v284 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v284->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v285 = v283;
            (v284->__on_zero_shared)(v284);
            std::__shared_weak_count::__release_weak(v284);
            v283 = v285;
          }
        }

        (*(*v283 + 88))(v283, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v34);
      v286 = v281 - 1;
      if (v286)
      {
        for (i3 = 0; i3 != v286; ++i3)
        {
          v288 = *(v22 + 24);
          if (*(v288 + 40) == 1)
          {
            v786 = (v288 + 16);
            if (v256)
            {
              v289 = v256;
              v290 = v252;
              do
              {
                sub_23F2FC63C(&v786, v290++);
                --v289;
              }

              while (v289);
            }
          }

          else if (v256)
          {
            for (i4 = 0; i4 != v256; ++i4)
            {
              v292 = *(v252 + i4);
              if (v292 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v292;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i4);
              }

              v293 = *(v288 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v282);
        }
      }

      goto LABEL_1198;
    case 30:
      v771 = &unk_285183858;
      sub_23F13750C(a3, &v772);
      v44 = *a2;
      v120 = v782;
      v121 = v772;
      if (!v772)
      {
        goto LABEL_779;
      }

      v122 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }

        v121 = v772;
        v123 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v124 = v121;
            (v123->__on_zero_shared)(v123);
            std::__shared_weak_count::__release_weak(v123);
            v121 = v124;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v121 + 96))(&v785);
      }

      else
      {
LABEL_779:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v474 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v475 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v476 = v772;
        v477 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v477->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v478 = v476;
            (v477->__on_zero_shared)(v477);
            std::__shared_weak_count::__release_weak(v477);
            v476 = v478;
          }
        }

        (*(*v476 + 88))(v476, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v120);
      v479 = v474 - 1;
      if (v479)
      {
        v480 = 2 * v475;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v480);
          --v479;
        }

        while (v479);
      }

      goto LABEL_1101;
    case 31:
      v771 = &unk_285183950;
      sub_23F137C7C(a3, &v772);
      v88 = *a2;
      v89 = v782;
      v90 = v772;
      if (!v772)
      {
        goto LABEL_652;
      }

      v91 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v772;
        v92 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v90 + 96))(&v785);
      }

      else
      {
LABEL_652:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v395 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v396 = v781;
      v397 = v774;
      if (v783 == 1 && v774)
      {
        v398 = v772;
        v399 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v400 = v398;
            (v399->__on_zero_shared)(v399);
            std::__shared_weak_count::__release_weak(v399);
            v398 = v400;
          }
        }

        (*(*v398 + 88))(v398, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v397 = v774;
      }

      v401 = (4 * v89);
      v402 = v395 - 1;
      if (!v402)
      {
        goto LABEL_1243;
      }

      if (v401)
      {
        v403 = 0;
        v404 = 2 * v396;
        do
        {
          v405 = 0;
          do
          {
            v406 = v397[v405];
            v770 = v397[v405];
            v407 = *(v88 + 24);
            if (*(v407 + 40) == 1)
            {
              v786 = (v407 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v406 > 0x7F)
            {
              if (v406 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v406);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v406;
              }

              v409 = *(v407 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v406;
              v408 = *(v407 + 8);
              std::ostream::write();
            }

            ++v405;
          }

          while (v401 != v405);
          v397 = (v397 + v404);
          ++v403;
        }

        while (v403 != v402);
LABEL_1243:
        if (v401)
        {
          v733 = 2 * v401;
          do
          {
            v734 = *v397;
            v770 = *v397;
            v735 = *(v88 + 24);
            if (*(v735 + 40) == 1)
            {
              v786 = (v735 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v734 > 0x7F)
            {
              if (v734 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v734);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v734;
              }

              v737 = *(v735 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v734;
              v736 = *(v735 + 8);
              std::ostream::write();
            }

            ++v397;
            v733 -= 2;
          }

          while (v733);
        }
      }

      goto LABEL_1329;
    case 32:
      v771 = &unk_285183A48;
      sub_23F1383EC(a3, &v772);
      v55 = *a2;
      v130 = v782;
      v131 = v772;
      if (!v772)
      {
        goto LABEL_807;
      }

      v132 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v132->__on_zero_shared)(v132);
          std::__shared_weak_count::__release_weak(v132);
        }

        v131 = v772;
        v133 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v134 = v131;
            (v133->__on_zero_shared)(v133);
            std::__shared_weak_count::__release_weak(v133);
            v131 = v134;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v131 + 96))(&v785);
      }

      else
      {
LABEL_807:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v488 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v489 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v490 = v772;
        v491 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v492 = v490;
            (v491->__on_zero_shared)(v491);
            std::__shared_weak_count::__release_weak(v491);
            v490 = v492;
          }
        }

        (*(*v490 + 88))(v490, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v130);
      v493 = v488 - 1;
      if (v493)
      {
        v494 = 0;
        v495 = 4 * v489;
        do
        {
          v496 = *(v55 + 24);
          if (*(v496 + 40) == 1)
          {
            v786 = (v496 + 16);
            if (v99)
            {
              v497 = 4 * v99;
              v498 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v498++);
                v497 -= 4;
              }

              while (v497);
            }
          }

          else if (v99)
          {
            v499 = 0;
            do
            {
              v500 = *(v331 + v499);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v500);
              v501 = *(v496 + 8);
              std::ostream::write();
              v499 += 4;
            }

            while (4 * v99 != v499);
          }

          v331 = (v331 + v495);
          ++v494;
        }

        while (v494 != v493);
      }

      goto LABEL_1199;
    case 33:
      v771 = &unk_285183B40;
      sub_23F138B5C(a3, &v772);
      v22 = *a2;
      v183 = v782;
      v184 = v772;
      if (!v772)
      {
        goto LABEL_1042;
      }

      v185 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v185->__on_zero_shared)(v185);
          std::__shared_weak_count::__release_weak(v185);
        }

        v184 = v772;
        v186 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v187 = v184;
            (v186->__on_zero_shared)(v186);
            std::__shared_weak_count::__release_weak(v186);
            v184 = v187;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v184 + 96))(&v785);
      }

      else
      {
LABEL_1042:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v628 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v629 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v630 = v772;
        v631 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v631->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v632 = v630;
            (v631->__on_zero_shared)(v631);
            std::__shared_weak_count::__release_weak(v631);
            v630 = v632;
          }
        }

        (*(*v630 + 88))(v630, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v183);
      v633 = v628 - 1;
      if (v633)
      {
        for (i5 = 0; i5 != v633; ++i5)
        {
          v635 = *(v22 + 24);
          if (*(v635 + 40) == 1)
          {
            v786 = (v635 + 16);
            if (v256)
            {
              v636 = v256;
              v637 = v252;
              do
              {
                sub_23F2FC63C(&v786, v637++);
                --v636;
              }

              while (v636);
            }
          }

          else if (v256)
          {
            for (i6 = 0; i6 != v256; ++i6)
            {
              v639 = *(v252 + i6);
              if (v639 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v639;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i6);
              }

              v640 = *(v635 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v629);
        }
      }

      goto LABEL_1198;
    case 34:
      v771 = &unk_285183C38;
      sub_23F1392C8(a3, &v772);
      v44 = *a2;
      v125 = v782;
      v126 = v772;
      if (!v772)
      {
        goto LABEL_793;
      }

      v127 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v772;
        v128 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v126 + 96))(&v785);
      }

      else
      {
LABEL_793:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v481 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v482 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v483 = v772;
        v484 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v484->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v485 = v483;
            (v484->__on_zero_shared)(v484);
            std::__shared_weak_count::__release_weak(v484);
            v483 = v485;
          }
        }

        (*(*v483 + 88))(v483, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v125);
      v486 = v481 - 1;
      if (v486)
      {
        v487 = 2 * v482;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v487);
          --v486;
        }

        while (v486);
      }

      goto LABEL_1101;
    case 35:
      v771 = &unk_285183D30;
      sub_23F139A38(a3, &v772);
      v114 = *a2;
      v115 = v782;
      v116 = v772;
      if (!v772)
      {
        goto LABEL_755;
      }

      v117 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        v116 = v772;
        v118 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v119 = v116;
            (v118->__on_zero_shared)(v118);
            std::__shared_weak_count::__release_weak(v118);
            v116 = v119;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v116 + 96))(&v785);
      }

      else
      {
LABEL_755:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v459 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v460 = v781;
      v461 = v774;
      if (v783 == 1 && v774)
      {
        v462 = v772;
        v463 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v464 = v462;
            (v463->__on_zero_shared)(v463);
            std::__shared_weak_count::__release_weak(v463);
            v462 = v464;
          }
        }

        (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v461 = v774;
      }

      v465 = (4 * v115);
      v466 = v459 - 1;
      if (!v466)
      {
        goto LABEL_1254;
      }

      if (v465)
      {
        v467 = 0;
        v468 = 2 * v460;
        do
        {
          v469 = 0;
          do
          {
            v470 = v461[v469];
            v770 = v461[v469];
            v471 = *(v114 + 24);
            if (*(v471 + 40) == 1)
            {
              v786 = (v471 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v470 > 0x7F)
            {
              if (v470 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v470);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v470;
              }

              v473 = *(v471 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v470;
              v472 = *(v471 + 8);
              std::ostream::write();
            }

            ++v469;
          }

          while (v465 != v469);
          v461 = (v461 + v468);
          ++v467;
        }

        while (v467 != v466);
LABEL_1254:
        if (v465)
        {
          v738 = 2 * v465;
          do
          {
            v739 = *v461;
            v770 = *v461;
            v740 = *(v114 + 24);
            if (*(v740 + 40) == 1)
            {
              v786 = (v740 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v739 > 0x7F)
            {
              if (v739 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v739);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v739;
              }

              v742 = *(v740 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v739;
              v741 = *(v740 + 8);
              std::ostream::write();
            }

            ++v461;
            v738 -= 2;
          }

          while (v738);
        }
      }

      goto LABEL_1329;
    case 36:
      v771 = &unk_285183E28;
      sub_23F13A1A8(a3, &v772);
      v55 = *a2;
      v109 = v782;
      v110 = v772;
      if (!v772)
      {
        goto LABEL_733;
      }

      v111 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v772;
        v112 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v110 + 96))(&v785);
      }

      else
      {
LABEL_733:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v445 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v446 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v447 = v772;
        v448 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v448->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v449 = v447;
            (v448->__on_zero_shared)(v448);
            std::__shared_weak_count::__release_weak(v448);
            v447 = v449;
          }
        }

        (*(*v447 + 88))(v447, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v109);
      v450 = v445 - 1;
      if (v450)
      {
        v451 = 0;
        v452 = 4 * v446;
        do
        {
          v453 = *(v55 + 24);
          if (*(v453 + 40) == 1)
          {
            v786 = (v453 + 16);
            if (v99)
            {
              v454 = 4 * v99;
              v455 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v455++);
                v454 -= 4;
              }

              while (v454);
            }
          }

          else if (v99)
          {
            v456 = 0;
            do
            {
              v457 = *(v331 + v456);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v457);
              v458 = *(v453 + 8);
              std::ostream::write();
              v456 += 4;
            }

            while (4 * v99 != v456);
          }

          v331 = (v331 + v452);
          ++v451;
        }

        while (v451 != v450);
      }

      goto LABEL_1199;
    case 37:
      v771 = &unk_285183F20;
      sub_23F13A918(a3, &v772);
      v22 = *a2;
      v167 = v782;
      v168 = v772;
      if (!v772)
      {
        goto LABEL_980;
      }

      v169 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v772;
        v170 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v168 + 96))(&v785);
      }

      else
      {
LABEL_980:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v593 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v594 = v781;
      v252 = v774;
      if (v783 == 1 && v774)
      {
        v595 = v772;
        v596 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v596->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v597 = v595;
            (v596->__on_zero_shared)(v596);
            std::__shared_weak_count::__release_weak(v596);
            v595 = v597;
          }
        }

        (*(*v595 + 88))(v595, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v252 = v774;
      }

      v256 = (4 * v167);
      v598 = v593 - 1;
      if (v598)
      {
        for (i7 = 0; i7 != v598; ++i7)
        {
          v600 = *(v22 + 24);
          if (*(v600 + 40) == 1)
          {
            v786 = (v600 + 16);
            if (v256)
            {
              v601 = v256;
              v602 = v252;
              do
              {
                sub_23F2FC63C(&v786, v602++);
                --v601;
              }

              while (v601);
            }
          }

          else if (v256)
          {
            for (i8 = 0; i8 != v256; ++i8)
            {
              v604 = *(v252 + i8);
              if (v604 < 0)
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v604;
              }

              else
              {
                LOBYTE(v786) = *(v252 + i8);
              }

              v605 = *(v600 + 8);
              std::ostream::write();
            }
          }

          v252 = (v252 + v594);
        }
      }

LABEL_1198:
      v786 = v252;
      v787 = v256;
      sub_23F2F787C(v22, &v786);
      goto LABEL_1329;
    case 38:
      v771 = &unk_285184018;
      sub_23F13B084(a3, &v772);
      v44 = *a2;
      v193 = v782;
      v194 = v772;
      if (!v772)
      {
        goto LABEL_1088;
      }

      v195 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v195->__on_zero_shared)(v195);
          std::__shared_weak_count::__release_weak(v195);
        }

        v194 = v772;
        v196 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v197 = v194;
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
            v194 = v197;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v194 + 96))(&v785);
      }

      else
      {
LABEL_1088:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v655 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v656 = v781;
      v310 = v774;
      if (v783 == 1 && v774)
      {
        v657 = v772;
        v658 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v658->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v659 = v657;
            (v658->__on_zero_shared)(v658);
            std::__shared_weak_count::__release_weak(v658);
            v657 = v659;
          }
        }

        (*(*v657 + 88))(v657, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v310 = v774;
      }

      v162 = (4 * v193);
      v660 = v655 - 1;
      if (v660)
      {
        v661 = 2 * v656;
        do
        {
          v786 = v310;
          v787 = v162;
          sub_23F2F7948(v44, &v786);
          v310 = (v310 + v661);
          --v660;
        }

        while (v660);
      }

LABEL_1101:
      v786 = v310;
      v787 = v162;
      sub_23F2F7948(v44, &v786);
      goto LABEL_1329;
    case 39:
      v771 = &unk_285184110;
      sub_23F13B7F4(a3, &v772);
      v72 = *a2;
      v73 = v782;
      v74 = v772;
      if (!v772)
      {
        goto LABEL_600;
      }

      v75 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }

        v74 = v772;
        v76 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v77 = v74;
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            v74 = v77;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v74 + 96))(&v785);
      }

      else
      {
LABEL_600:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v366 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v367 = v781;
      v368 = v774;
      if (v783 == 1 && v774)
      {
        v369 = v772;
        v370 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v370->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v371 = v369;
            (v370->__on_zero_shared)(v370);
            std::__shared_weak_count::__release_weak(v370);
            v369 = v371;
          }
        }

        (*(*v369 + 88))(v369, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v368 = v774;
      }

      v372 = (4 * v73);
      v373 = v366 - 1;
      if (!v373)
      {
        goto LABEL_1232;
      }

      if (v372)
      {
        v374 = 0;
        v375 = 2 * v367;
        do
        {
          v376 = 0;
          do
          {
            v377 = v368[v376];
            v770 = v368[v376];
            v378 = *(v72 + 24);
            if (*(v378 + 40) == 1)
            {
              v786 = (v378 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v377 > 0x7F)
            {
              if (v377 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v377);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v377;
              }

              v380 = *(v378 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v377;
              v379 = *(v378 + 8);
              std::ostream::write();
            }

            ++v376;
          }

          while (v372 != v376);
          v368 = (v368 + v375);
          ++v374;
        }

        while (v374 != v373);
LABEL_1232:
        if (v372)
        {
          v728 = 2 * v372;
          do
          {
            v729 = *v368;
            v770 = *v368;
            v730 = *(v72 + 24);
            if (*(v730 + 40) == 1)
            {
              v786 = (v730 + 16);
              sub_23F2FCB5C(&v786, &v770);
            }

            else if (v729 > 0x7F)
            {
              if (v729 > 0xFF)
              {
                LOBYTE(v786) = -51;
                *(&v786 + 1) = __rev16(v729);
              }

              else
              {
                LOBYTE(v786) = -52;
                BYTE1(v786) = v729;
              }

              v732 = *(v730 + 8);
              std::ostream::write();
            }

            else
            {
              LOBYTE(v786) = v729;
              v731 = *(v730 + 8);
              std::ostream::write();
            }

            ++v368;
            v728 -= 2;
          }

          while (v728);
        }
      }

LABEL_1329:
      v768 = v785;
      v785 = 0;
      if (v768)
      {
        (*(*v768 + 8))(v768);
      }

      v769 = v773;
      if (v773)
      {
        if (!atomic_fetch_add(&v773->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v769->__on_zero_shared)(v769);
          std::__shared_weak_count::__release_weak(v769);
        }
      }

      return;
    case 40:
      v771 = &unk_285184208;
      sub_23F13BF64(a3, &v772);
      v55 = *a2;
      v56 = v782;
      v57 = v772;
      if (!v772)
      {
        goto LABEL_540;
      }

      v58 = v773;
      if (v773)
      {
        atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v58->__on_zero_shared)(v58);
          std::__shared_weak_count::__release_weak(v58);
        }

        v57 = v772;
        v59 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v60 = v57;
            (v59->__on_zero_shared)(v59);
            std::__shared_weak_count::__release_weak(v59);
            v57 = v60;
          }
        }
      }

      if (v784 == 1)
      {
        (*(*v57 + 96))(&v785);
      }

      else
      {
LABEL_540:
        v785 = 0;
      }

      if (!v775)
      {
        goto LABEL_1329;
      }

      if (!v776)
      {
        goto LABEL_1329;
      }

      v329 = v777;
      if (!v777)
      {
        goto LABEL_1329;
      }

      v330 = v781;
      v331 = v774;
      if (v783 == 1 && v774)
      {
        v332 = v772;
        v333 = v773;
        if (v773)
        {
          atomic_fetch_add_explicit(&v773->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v333->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v334 = v332;
            (v333->__on_zero_shared)(v333);
            std::__shared_weak_count::__release_weak(v333);
            v332 = v334;
          }
        }

        (*(*v332 + 88))(v332, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v331 = v774;
      }

      v99 = (4 * v56);
      v335 = v329 - 1;
      if (v335)
      {
        v336 = 0;
        v337 = 4 * v330;
        do
        {
          v338 = *(v55 + 24);
          if (*(v338 + 40) == 1)
          {
            v786 = (v338 + 16);
            if (v99)
            {
              v339 = 4 * v99;
              v340 = v331;
              do
              {
                sub_23F2FE06C(&v770, &v786, v340++);
                v339 -= 4;
              }

              while (v339);
            }
          }

          else if (v99)
          {
            v341 = 0;
            do
            {
              v342 = *(v331 + v341);
              LOBYTE(v786) = -54;
              *(&v786 + 1) = bswap32(v342);
              v343 = *(v338 + 8);
              std::ostream::write();
              v341 += 4;
            }

            while (4 * v99 != v341);
          }

          v331 = (v331 + v337);
          ++v336;
        }

        while (v336 != v335);
      }

LABEL_1199:
      v786 = v331;
      v787 = v99;
      sub_23F2F7A44(v55, &v786);
      goto LABEL_1329;
    default:
      return;
  }
}

void sub_23F14AFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  sub_23F133F30(&a12);
  _Unwind_Resume(a1);
}

void sub_23F14BF28(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      sub_23F08C868(a3, &v690);
      v4 = *a2;
      v5 = v693;
      v6 = v690;
      if (!v690)
      {
        goto LABEL_860;
      }

      v7 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v690;
        v8 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v6 + 96))(&v702);
      }

      else
      {
LABEL_860:
        v702 = 0;
      }

      if (v693)
      {
        v483 = v694;
        if (v694)
        {
          v484 = v692;
          if (v697 == 1 && v692)
          {
            v485 = v690;
            v486 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v487 = v485;
                (v486->__on_zero_shared)(v486);
                std::__shared_weak_count::__release_weak(v486);
                v485 = v487;
              }
            }

            (*(*v485 + 88))(v485, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v484 = v692;
          }

          if (v483 != 1)
          {
            v703 = v484;
            v704 = v5;
            sub_23F2E7154(v4, &v703);
          }

          v703 = v484;
          v704 = v5;
          sub_23F2E7154(v4, &v703);
        }
      }

      goto LABEL_1313;
    case 2:
      sub_23F08DA84(a3, &v690);
      v154 = *a2;
      v155 = v693;
      v156 = v690;
      if (!v690)
      {
        goto LABEL_848;
      }

      v157 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v690;
        v158 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v156 + 96))(&v702);
      }

      else
      {
LABEL_848:
        v702 = 0;
      }

      if (v693)
      {
        v478 = v694;
        if (v694)
        {
          v479 = v692;
          if (v697 == 1 && v692)
          {
            v480 = v690;
            v481 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v481->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v482 = v480;
                (v481->__on_zero_shared)(v481);
                std::__shared_weak_count::__release_weak(v481);
                v480 = v482;
              }
            }

            (*(*v480 + 88))(v480, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v479 = v692;
          }

          if (v478 != 1)
          {
            v703 = v479;
            v704 = v155;
            sub_23F2E807C(v154, &v703);
          }

          v703 = v479;
          v704 = v155;
          sub_23F2E807C(v154, &v703);
        }
      }

      goto LABEL_1313;
    case 3:
      sub_23F12B4EC(a3, &v690);
      v148 = *a2;
      v149 = v693;
      v150 = v690;
      if (!v690)
      {
        goto LABEL_835;
      }

      v151 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v690;
        v152 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v150 + 96))(&v702);
      }

      else
      {
LABEL_835:
        v702 = 0;
      }

      if (v693)
      {
        v470 = v694;
        if (v694)
        {
          v471 = v696;
          v472 = v692;
          if (v697 == 1 && v692)
          {
            v473 = v690;
            v474 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v474->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v475 = v473;
                (v474->__on_zero_shared)(v474);
                std::__shared_weak_count::__release_weak(v474);
                v473 = v475;
              }
            }

            (*(*v473 + 88))(v473, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v472 = v692;
          }

          v476 = v470 - 1;
          if (v476)
          {
            v477 = 2 * v471;
            do
            {
              v703 = v472;
              v704 = v149;
              sub_23F2E8824(v148, &v703);
              v472 = (v472 + v477);
              --v476;
            }

            while (v476);
          }

          v703 = v472;
          v704 = v149;
          sub_23F2E8824(v148, &v703);
        }
      }

      goto LABEL_1313;
    case 4:
      sub_23F12BBC8(a3, &v690);
      v92 = *a2;
      v93 = v693;
      v94 = v690;
      if (!v690)
      {
        goto LABEL_642;
      }

      v95 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }

        v94 = v690;
        v96 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v97 = v94;
            (v96->__on_zero_shared)(v96);
            std::__shared_weak_count::__release_weak(v96);
            v94 = v97;
          }
        }
      }

      if (BYTE1(v697) == 1)
      {
        (*(*v94 + 96))(&v702);
      }

      else
      {
LABEL_642:
        v702 = 0;
      }

      if (v693)
      {
        v362 = v694;
        if (v694)
        {
          v363 = v696;
          v364 = v692;
          if (v697 == 1 && v692)
          {
            v365 = v690;
            v366 = v691;
            if (v691)
            {
              atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v366->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v367 = v365;
                (v366->__on_zero_shared)(v366);
                std::__shared_weak_count::__release_weak(v366);
                v365 = v367;
              }
            }

            (*(*v365 + 88))(v365, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v364 = v692;
          }

          v368 = v362 - 1;
          if (v368)
          {
            v369 = 4 * v363;
            do
            {
              v703 = v364;
              v704 = v93;
              sub_23F2E8C48(v92, &v703);
              v364 = (v364 + v369);
              --v368;
            }

            while (v368);
          }

          v703 = v364;
          v704 = v93;
          sub_23F2E8C48(v92, &v703);
        }
      }

      goto LABEL_1313;
    case 5:
      sub_23F12C2A4(a3, &v690);
      v10 = *a2;
      v133 = v699;
      v134 = v690;
      if (!v690)
      {
        goto LABEL_780;
      }

      v135 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v135->__on_zero_shared)(v135);
          std::__shared_weak_count::__release_weak(v135);
        }

        v134 = v690;
        v136 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v137 = v134;
            (v136->__on_zero_shared)(v136);
            std::__shared_weak_count::__release_weak(v136);
            v134 = v137;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v134 + 96))(&v702);
      }

      else
      {
LABEL_780:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v439 = v695;
          if (v695)
          {
            v440 = v698;
            v441 = v692;
            if (v700 == 1 && v692)
            {
              v442 = v690;
              v443 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v444 = v442;
                  (v443->__on_zero_shared)(v443);
                  std::__shared_weak_count::__release_weak(v443);
                  v442 = v444;
                }
              }

              (*(*v442 + 88))(v442, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v441 = v692;
            }

            v445 = v439 - 1;
            if (v439 != 1)
            {
              if (v133)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v441;
                v704 = 2;
                sub_23F2E7154(v10, &v703);
              }

              v441 = (v441 + v440 + v440 * (v439 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v650 = *(v10 + 56);
                *(v10 + 40) = *(v650 - 8);
                *(v10 + 56) = v650 - 8;
                --v445;
              }

              while (v445);
            }

            sub_23F2E710C(v10);
            if (v133)
            {
              v703 = v441;
              v704 = 2;
              sub_23F2E7154(v10, &v703);
            }

            v651 = *(v10 + 56);
            *(v10 + 40) = *(v651 - 8);
            *(v10 + 56) = v651 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 6:
      sub_23F12CA10(a3, &v690);
      v10 = *a2;
      v87 = v699;
      v88 = v690;
      if (!v690)
      {
        goto LABEL_627;
      }

      v89 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }

        v88 = v690;
        v90 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v91 = v88;
            (v90->__on_zero_shared)(v90);
            std::__shared_weak_count::__release_weak(v90);
            v88 = v91;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v88 + 96))(&v702);
      }

      else
      {
LABEL_627:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v355 = v695;
          if (v695)
          {
            v356 = v698;
            v357 = v692;
            if (v700 == 1 && v692)
            {
              v358 = v690;
              v359 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v360 = v358;
                  (v359->__on_zero_shared)(v359);
                  std::__shared_weak_count::__release_weak(v359);
                  v358 = v360;
                }
              }

              (*(*v358 + 88))(v358, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v357 = v692;
            }

            v361 = v355 - 1;
            if (v361)
            {
              if (v87)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v357;
                v704 = 2;
                sub_23F2E807C(v10, &v703);
              }

              v626 = 2 * v356;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v627 = *(v10 + 56);
                *(v10 + 40) = *(v627 - 8);
                *(v10 + 56) = v627 - 8;
                v357 = (v357 + v626);
                --v361;
              }

              while (v361);
            }

            sub_23F2E710C(v10);
            if (v87)
            {
              v703 = v357;
              v704 = 2;
              sub_23F2E807C(v10, &v703);
            }

            v628 = *(v10 + 56);
            *(v10 + 40) = *(v628 - 8);
            *(v10 + 56) = v628 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 7:
      sub_23F12D180(a3, &v690);
      v10 = *a2;
      v62 = v699;
      v63 = v690;
      if (!v690)
      {
        goto LABEL_537;
      }

      v64 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v64->__on_zero_shared)(v64);
          std::__shared_weak_count::__release_weak(v64);
        }

        v63 = v690;
        v65 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v66 = v63;
            (v65->__on_zero_shared)(v65);
            std::__shared_weak_count::__release_weak(v65);
            v63 = v66;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v63 + 96))(&v702);
      }

      else
      {
LABEL_537:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v305 = v695;
          if (v695)
          {
            v306 = v697;
            v307 = v698;
            v308 = v692;
            if (v700 == 1 && v692)
            {
              v309 = v690;
              v310 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v310->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v311 = v309;
                  (v310->__on_zero_shared)(v310);
                  std::__shared_weak_count::__release_weak(v310);
                  v309 = v311;
                }
              }

              (*(*v309 + 88))(v309, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v308 = v692;
            }

            v312 = v305 - 1;
            if (v312)
            {
              if (v62)
              {
                for (i = 0; i != v312; ++i)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v314 = 0;
                  v315 = v62;
                  do
                  {
                    v703 = &v308[v314];
                    v704 = 2;
                    sub_23F2E8824(v10, &v703);
                    v314 += v306;
                    --v315;
                  }

                  while (v315);
                  v316 = *(v10 + 56);
                  *(v10 + 40) = *(v316 - 8);
                  *(v10 + 56) = v316 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v308 += v307;
                }
              }

              else
              {
                v609 = 2 * v307;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v610 = *(v10 + 56);
                  *(v10 + 40) = *(v610 - 8);
                  *(v10 + 56) = v610 - 8;
                  v308 = (v308 + v609);
                  --v312;
                }

                while (v312);
              }
            }

            sub_23F2E710C(v10);
            if (v62)
            {
              v611 = 0;
              do
              {
                v703 = &v308[v611];
                v704 = 2;
                sub_23F2E8824(v10, &v703);
                v611 += v306;
                --v62;
              }

              while (v62);
            }

            v612 = *(v10 + 56);
            *(v10 + 40) = *(v612 - 8);
            *(v10 + 56) = v612 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 8:
      sub_23F12D8F0(a3, &v690);
      v10 = *a2;
      v143 = v699;
      v144 = v690;
      if (!v690)
      {
        goto LABEL_815;
      }

      v145 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v690;
        v146 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v144 + 96))(&v702);
      }

      else
      {
LABEL_815:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v458 = v695;
          if (v695)
          {
            v459 = v697;
            v460 = v698;
            v461 = v692;
            if (v700 == 1 && v692)
            {
              v462 = v690;
              v463 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v464 = v462;
                  (v463->__on_zero_shared)(v463);
                  std::__shared_weak_count::__release_weak(v463);
                  v462 = v464;
                }
              }

              (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v461 = v692;
            }

            v465 = v458 - 1;
            if (v465)
            {
              if (v143)
              {
                for (j = 0; j != v465; ++j)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v467 = 0;
                  v468 = v143;
                  do
                  {
                    v703 = &v461[2 * v467];
                    v704 = 2;
                    sub_23F2E8C48(v10, &v703);
                    v467 += v459;
                    --v468;
                  }

                  while (v468);
                  v469 = *(v10 + 56);
                  *(v10 + 40) = *(v469 - 8);
                  *(v10 + 56) = v469 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v461 += 2 * v460;
                }
              }

              else
              {
                v656 = 4 * v460;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v657 = *(v10 + 56);
                  *(v10 + 40) = *(v657 - 8);
                  *(v10 + 56) = v657 - 8;
                  v461 = (v461 + v656);
                  --v465;
                }

                while (v465);
              }
            }

            sub_23F2E710C(v10);
            if (v143)
            {
              v658 = 0;
              do
              {
                v703 = &v461[2 * v658];
                v704 = 2;
                sub_23F2E8C48(v10, &v703);
                v658 += v459;
                --v143;
              }

              while (v143);
            }

            v659 = *(v10 + 56);
            *(v10 + 40) = *(v659 - 8);
            *(v10 + 56) = v659 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 9:
      sub_23F12E060(a3, &v690);
      v10 = *a2;
      v128 = v699;
      v129 = v690;
      if (!v690)
      {
        goto LABEL_765;
      }

      v130 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        v129 = v690;
        v131 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v132 = v129;
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
            v129 = v132;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v129 + 96))(&v702);
      }

      else
      {
LABEL_765:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v432 = v695;
          if (v695)
          {
            v433 = v698;
            v434 = v692;
            if (v700 == 1 && v692)
            {
              v435 = v690;
              v436 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v436->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v437 = v435;
                  (v436->__on_zero_shared)(v436);
                  std::__shared_weak_count::__release_weak(v436);
                  v435 = v437;
                }
              }

              (*(*v435 + 88))(v435, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v434 = v692;
            }

            v438 = v432 - 1;
            if (v432 != 1)
            {
              if (v128)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v434;
                v704 = 3;
                sub_23F2E7154(v10, &v703);
              }

              v434 = (v434 + v433 + v433 * (v432 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v648 = *(v10 + 56);
                *(v10 + 40) = *(v648 - 8);
                *(v10 + 56) = v648 - 8;
                --v438;
              }

              while (v438);
            }

            sub_23F2E710C(v10);
            if (v128)
            {
              v703 = v434;
              v704 = 3;
              sub_23F2E7154(v10, &v703);
            }

            v649 = *(v10 + 56);
            *(v10 + 40) = *(v649 - 8);
            *(v10 + 56) = v649 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 10:
      sub_23F12E7CC(a3, &v690);
      v10 = *a2;
      v170 = v699;
      v171 = v690;
      if (!v690)
      {
        goto LABEL_907;
      }

      v172 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v172->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v172->__on_zero_shared)(v172);
          std::__shared_weak_count::__release_weak(v172);
        }

        v171 = v690;
        v173 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v174 = v171;
            (v173->__on_zero_shared)(v173);
            std::__shared_weak_count::__release_weak(v173);
            v171 = v174;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v171 + 96))(&v702);
      }

      else
      {
LABEL_907:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v507 = v695;
          if (v695)
          {
            v508 = v698;
            v509 = v692;
            if (v700 == 1 && v692)
            {
              v510 = v690;
              v511 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v511->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v512 = v510;
                  (v511->__on_zero_shared)(v511);
                  std::__shared_weak_count::__release_weak(v511);
                  v510 = v512;
                }
              }

              (*(*v510 + 88))(v510, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v509 = v692;
            }

            v513 = v507 - 1;
            if (v513)
            {
              if (v170)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v509;
                v704 = 3;
                sub_23F2E807C(v10, &v703);
              }

              v665 = 2 * v508;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v666 = *(v10 + 56);
                *(v10 + 40) = *(v666 - 8);
                *(v10 + 56) = v666 - 8;
                v509 = (v509 + v665);
                --v513;
              }

              while (v513);
            }

            sub_23F2E710C(v10);
            if (v170)
            {
              v703 = v509;
              v704 = 3;
              sub_23F2E807C(v10, &v703);
            }

            v667 = *(v10 + 56);
            *(v10 + 40) = *(v667 - 8);
            *(v10 + 56) = v667 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 11:
      sub_23F12EF3C(a3, &v690);
      v10 = *a2;
      v165 = v699;
      v166 = v690;
      if (!v690)
      {
        goto LABEL_887;
      }

      v167 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v167->__on_zero_shared)(v167);
          std::__shared_weak_count::__release_weak(v167);
        }

        v166 = v690;
        v168 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v169 = v166;
            (v168->__on_zero_shared)(v168);
            std::__shared_weak_count::__release_weak(v168);
            v166 = v169;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v166 + 96))(&v702);
      }

      else
      {
LABEL_887:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v495 = v695;
          if (v695)
          {
            v496 = v697;
            v497 = v698;
            v498 = v692;
            if (v700 == 1 && v692)
            {
              v499 = v690;
              v500 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v500->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v501 = v499;
                  (v500->__on_zero_shared)(v500);
                  std::__shared_weak_count::__release_weak(v500);
                  v499 = v501;
                }
              }

              (*(*v499 + 88))(v499, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v498 = v692;
            }

            v502 = v495 - 1;
            if (v502)
            {
              if (v165)
              {
                for (k = 0; k != v502; ++k)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v504 = 0;
                  v505 = v165;
                  do
                  {
                    v703 = &v498[v504];
                    v704 = 3;
                    sub_23F2E8824(v10, &v703);
                    v504 += v496;
                    --v505;
                  }

                  while (v505);
                  v506 = *(v10 + 56);
                  *(v10 + 40) = *(v506 - 8);
                  *(v10 + 56) = v506 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v498 += v497;
                }
              }

              else
              {
                v661 = 2 * v497;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v662 = *(v10 + 56);
                  *(v10 + 40) = *(v662 - 8);
                  *(v10 + 56) = v662 - 8;
                  v498 = (v498 + v661);
                  --v502;
                }

                while (v502);
              }
            }

            sub_23F2E710C(v10);
            if (v165)
            {
              v663 = 0;
              do
              {
                v703 = &v498[v663];
                v704 = 3;
                sub_23F2E8824(v10, &v703);
                v663 += v496;
                --v165;
              }

              while (v165);
            }

            v664 = *(v10 + 56);
            *(v10 + 40) = *(v664 - 8);
            *(v10 + 56) = v664 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 12:
      sub_23F12F6AC(a3, &v690);
      v10 = *a2;
      v26 = v699;
      v27 = v690;
      if (!v690)
      {
        goto LABEL_417;
      }

      v28 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v27 = v690;
        v29 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = v27;
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
            v27 = v30;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v27 + 96))(&v702);
      }

      else
      {
LABEL_417:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v241 = v695;
          if (v695)
          {
            v242 = v697;
            v243 = v698;
            v244 = v692;
            if (v700 == 1 && v692)
            {
              v245 = v690;
              v246 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v246->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v247 = v245;
                  (v246->__on_zero_shared)(v246);
                  std::__shared_weak_count::__release_weak(v246);
                  v245 = v247;
                }
              }

              (*(*v245 + 88))(v245, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v244 = v692;
            }

            v248 = v241 - 1;
            if (v248)
            {
              if (v26)
              {
                for (m = 0; m != v248; ++m)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v250 = 0;
                  v251 = v26;
                  do
                  {
                    v703 = &v244[2 * v250];
                    v704 = 3;
                    sub_23F2E8C48(v10, &v703);
                    v250 += v242;
                    --v251;
                  }

                  while (v251);
                  v252 = *(v10 + 56);
                  *(v10 + 40) = *(v252 - 8);
                  *(v10 + 56) = v252 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v244 += 2 * v243;
                }
              }

              else
              {
                v588 = 4 * v243;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v589 = *(v10 + 56);
                  *(v10 + 40) = *(v589 - 8);
                  *(v10 + 56) = v589 - 8;
                  v244 = (v244 + v588);
                  --v248;
                }

                while (v248);
              }
            }

            sub_23F2E710C(v10);
            if (v26)
            {
              v590 = 0;
              do
              {
                v703 = &v244[2 * v590];
                v704 = 3;
                sub_23F2E8C48(v10, &v703);
                v590 += v242;
                --v26;
              }

              while (v26);
            }

            v591 = *(v10 + 56);
            *(v10 + 40) = *(v591 - 8);
            *(v10 + 56) = v591 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 13:
      sub_23F12FE1C(a3, &v690);
      v10 = *a2;
      v46 = v699;
      v47 = v690;
      if (!v690)
      {
        goto LABEL_487;
      }

      v48 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        v47 = v690;
        v49 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v50 = v47;
            (v49->__on_zero_shared)(v49);
            std::__shared_weak_count::__release_weak(v49);
            v47 = v50;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v47 + 96))(&v702);
      }

      else
      {
LABEL_487:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v279 = v695;
          if (v695)
          {
            v280 = v698;
            v281 = v692;
            if (v700 == 1 && v692)
            {
              v282 = v690;
              v283 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v281 = v692;
            }

            v285 = v279 - 1;
            if (v279 != 1)
            {
              if (v46)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v281;
                v704 = 4;
                sub_23F2E7154(v10, &v703);
              }

              v281 = (v281 + v280 + v280 * (v279 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v601 = *(v10 + 56);
                *(v10 + 40) = *(v601 - 8);
                *(v10 + 56) = v601 - 8;
                --v285;
              }

              while (v285);
            }

            sub_23F2E710C(v10);
            if (v46)
            {
              v703 = v281;
              v704 = 4;
              sub_23F2E7154(v10, &v703);
            }

            v602 = *(v10 + 56);
            *(v10 + 40) = *(v602 - 8);
            *(v10 + 56) = v602 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 14:
      sub_23F130588(a3, &v690);
      v10 = *a2;
      v41 = v699;
      v42 = v690;
      if (!v690)
      {
        goto LABEL_472;
      }

      v43 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v690;
        v44 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v42 + 96))(&v702);
      }

      else
      {
LABEL_472:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v272 = v695;
          if (v695)
          {
            v273 = v698;
            v274 = v692;
            if (v700 == 1 && v692)
            {
              v275 = v690;
              v276 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v277 = v275;
                  (v276->__on_zero_shared)(v276);
                  std::__shared_weak_count::__release_weak(v276);
                  v275 = v277;
                }
              }

              (*(*v275 + 88))(v275, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v274 = v692;
            }

            v278 = v272 - 1;
            if (v278)
            {
              if (v41)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v274;
                v704 = 4;
                sub_23F2E807C(v10, &v703);
              }

              v598 = 2 * v273;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v599 = *(v10 + 56);
                *(v10 + 40) = *(v599 - 8);
                *(v10 + 56) = v599 - 8;
                v274 = (v274 + v598);
                --v278;
              }

              while (v278);
            }

            sub_23F2E710C(v10);
            if (v41)
            {
              v703 = v274;
              v704 = 4;
              sub_23F2E807C(v10, &v703);
            }

            v600 = *(v10 + 56);
            *(v10 + 40) = *(v600 - 8);
            *(v10 + 56) = v600 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 15:
      sub_23F130CF8(a3, &v690);
      v10 = *a2;
      v190 = v699;
      v191 = v690;
      if (!v690)
      {
        goto LABEL_972;
      }

      v192 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v192->__on_zero_shared)(v192);
          std::__shared_weak_count::__release_weak(v192);
        }

        v191 = v690;
        v193 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v194 = v191;
            (v193->__on_zero_shared)(v193);
            std::__shared_weak_count::__release_weak(v193);
            v191 = v194;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v191 + 96))(&v702);
      }

      else
      {
LABEL_972:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v540 = v695;
          if (v695)
          {
            v541 = v697;
            v542 = v698;
            v543 = v692;
            if (v700 == 1 && v692)
            {
              v544 = v690;
              v545 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v545->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v546 = v544;
                  (v545->__on_zero_shared)(v545);
                  std::__shared_weak_count::__release_weak(v545);
                  v544 = v546;
                }
              }

              (*(*v544 + 88))(v544, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v543 = v692;
            }

            v547 = v540 - 1;
            if (v547)
            {
              if (v190)
              {
                for (n = 0; n != v547; ++n)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v549 = 0;
                  v550 = v190;
                  do
                  {
                    v703 = &v543[v549];
                    v704 = 4;
                    sub_23F2E8824(v10, &v703);
                    v549 += v541;
                    --v550;
                  }

                  while (v550);
                  v551 = *(v10 + 56);
                  *(v10 + 40) = *(v551 - 8);
                  *(v10 + 56) = v551 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v543 += v542;
                }
              }

              else
              {
                v676 = 2 * v542;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v677 = *(v10 + 56);
                  *(v10 + 40) = *(v677 - 8);
                  *(v10 + 56) = v677 - 8;
                  v543 = (v543 + v676);
                  --v547;
                }

                while (v547);
              }
            }

            sub_23F2E710C(v10);
            if (v190)
            {
              v678 = 0;
              do
              {
                v703 = &v543[v678];
                v704 = 4;
                sub_23F2E8824(v10, &v703);
                v678 += v541;
                --v190;
              }

              while (v190);
            }

            v679 = *(v10 + 56);
            *(v10 + 40) = *(v679 - 8);
            *(v10 + 56) = v679 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 16:
      sub_23F131468(a3, &v690);
      v10 = *a2;
      v138 = v699;
      v139 = v690;
      if (!v690)
      {
        goto LABEL_795;
      }

      v140 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v139 = v690;
        v141 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v139;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v139 = v142;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v139 + 96))(&v702);
      }

      else
      {
LABEL_795:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v446 = v695;
          if (v695)
          {
            v447 = v697;
            v448 = v698;
            v449 = v692;
            if (v700 == 1 && v692)
            {
              v450 = v690;
              v451 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v451->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v452 = v450;
                  (v451->__on_zero_shared)(v451);
                  std::__shared_weak_count::__release_weak(v451);
                  v450 = v452;
                }
              }

              (*(*v450 + 88))(v450, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v449 = v692;
            }

            v453 = v446 - 1;
            if (v453)
            {
              if (v138)
              {
                for (ii = 0; ii != v453; ++ii)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v455 = 0;
                  v456 = v138;
                  do
                  {
                    v703 = &v449[2 * v455];
                    v704 = 4;
                    sub_23F2E8C48(v10, &v703);
                    v455 += v447;
                    --v456;
                  }

                  while (v456);
                  v457 = *(v10 + 56);
                  *(v10 + 40) = *(v457 - 8);
                  *(v10 + 56) = v457 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v449 += 2 * v448;
                }
              }

              else
              {
                v652 = 4 * v448;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v653 = *(v10 + 56);
                  *(v10 + 40) = *(v653 - 8);
                  *(v10 + 56) = v653 - 8;
                  v449 = (v449 + v652);
                  --v453;
                }

                while (v453);
              }
            }

            sub_23F2E710C(v10);
            if (v138)
            {
              v654 = 0;
              do
              {
                v703 = &v449[2 * v654];
                v704 = 4;
                sub_23F2E8C48(v10, &v703);
                v654 += v447;
                --v138;
              }

              while (v138);
            }

            v655 = *(v10 + 56);
            *(v10 + 40) = *(v655 - 8);
            *(v10 + 56) = v655 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 17:
      sub_23F131BD8(a3, &v690);
      v10 = *a2;
      v195 = v699;
      v196 = v690;
      if (!v690)
      {
        goto LABEL_992;
      }

      v197 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v197->__on_zero_shared)(v197);
          std::__shared_weak_count::__release_weak(v197);
        }

        v196 = v690;
        v198 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v199 = v196;
            (v198->__on_zero_shared)(v198);
            std::__shared_weak_count::__release_weak(v198);
            v196 = v199;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v196 + 96))(&v702);
      }

      else
      {
LABEL_992:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v552 = v695;
          if (v695)
          {
            v553 = v698;
            v554 = v692;
            if (v700 == 1 && v692)
            {
              v555 = v690;
              v556 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v556->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v557 = v555;
                  (v556->__on_zero_shared)(v556);
                  std::__shared_weak_count::__release_weak(v556);
                  v555 = v557;
                }
              }

              (*(*v555 + 88))(v555, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v554 = v692;
            }

            v558 = v552 - 1;
            if (v552 != 1)
            {
              if (v195)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v554;
                v704 = 3;
                sub_23F2E7154(v10, &v703);
              }

              v554 = (v554 + v553 + v553 * (v552 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v682 = *(v10 + 56);
                *(v10 + 40) = *(v682 - 8);
                *(v10 + 56) = v682 - 8;
                --v558;
              }

              while (v558);
            }

            sub_23F2E710C(v10);
            if (v195)
            {
              v703 = v554;
              v704 = 3;
              sub_23F2E7154(v10, &v703);
            }

            v683 = *(v10 + 56);
            *(v10 + 40) = *(v683 - 8);
            *(v10 + 56) = v683 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 18:
      sub_23F132344(a3, &v690);
      v10 = *a2;
      v57 = v699;
      v58 = v690;
      if (!v690)
      {
        goto LABEL_522;
      }

      v59 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        v58 = v690;
        v60 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v61 = v58;
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
            v58 = v61;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v58 + 96))(&v702);
      }

      else
      {
LABEL_522:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v298 = v695;
          if (v695)
          {
            v299 = v698;
            v300 = v692;
            if (v700 == 1 && v692)
            {
              v301 = v690;
              v302 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v302->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v303 = v301;
                  (v302->__on_zero_shared)(v302);
                  std::__shared_weak_count::__release_weak(v302);
                  v301 = v303;
                }
              }

              (*(*v301 + 88))(v301, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v300 = v692;
            }

            v304 = v298 - 1;
            if (v304)
            {
              if (v57)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v300;
                v704 = 3;
                sub_23F2E807C(v10, &v703);
              }

              v606 = 2 * v299;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v607 = *(v10 + 56);
                *(v10 + 40) = *(v607 - 8);
                *(v10 + 56) = v607 - 8;
                v300 = (v300 + v606);
                --v304;
              }

              while (v304);
            }

            sub_23F2E710C(v10);
            if (v57)
            {
              v703 = v300;
              v704 = 3;
              sub_23F2E807C(v10, &v703);
            }

            v608 = *(v10 + 56);
            *(v10 + 40) = *(v608 - 8);
            *(v10 + 56) = v608 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 19:
      sub_23F132AB4(a3, &v690);
      v10 = *a2;
      v16 = v699;
      v17 = v690;
      if (!v690)
      {
        goto LABEL_382;
      }

      v18 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }

        v17 = v690;
        v19 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v20 = v17;
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
            v17 = v20;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v17 + 96))(&v702);
      }

      else
      {
LABEL_382:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v222 = v695;
          if (v695)
          {
            v223 = v697;
            v224 = v698;
            v225 = v692;
            if (v700 == 1 && v692)
            {
              v226 = v690;
              v227 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v228 = v226;
                  (v227->__on_zero_shared)(v227);
                  std::__shared_weak_count::__release_weak(v227);
                  v226 = v228;
                }
              }

              (*(*v226 + 88))(v226, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v225 = v692;
            }

            v229 = v222 - 1;
            if (v229)
            {
              if (v16)
              {
                for (jj = 0; jj != v229; ++jj)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v231 = 0;
                  v232 = v16;
                  do
                  {
                    v703 = &v225[v231];
                    v704 = 3;
                    sub_23F2E8824(v10, &v703);
                    v231 += v223;
                    --v232;
                  }

                  while (v232);
                  v233 = *(v10 + 56);
                  *(v10 + 40) = *(v233 - 8);
                  *(v10 + 56) = v233 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v225 += v224;
                }
              }

              else
              {
                v582 = 2 * v224;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v583 = *(v10 + 56);
                  *(v10 + 40) = *(v583 - 8);
                  *(v10 + 56) = v583 - 8;
                  v225 = (v225 + v582);
                  --v229;
                }

                while (v229);
              }
            }

            sub_23F2E710C(v10);
            if (v16)
            {
              v584 = 0;
              do
              {
                v703 = &v225[v584];
                v704 = 3;
                sub_23F2E8824(v10, &v703);
                v584 += v223;
                --v16;
              }

              while (v16);
            }

            v585 = *(v10 + 56);
            *(v10 + 40) = *(v585 - 8);
            *(v10 + 56) = v585 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 20:
      sub_23F133224(a3, &v690);
      v10 = *a2;
      v180 = v699;
      v181 = v690;
      if (!v690)
      {
        goto LABEL_937;
      }

      v182 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v182->__on_zero_shared)(v182);
          std::__shared_weak_count::__release_weak(v182);
        }

        v181 = v690;
        v183 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v181;
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
            v181 = v184;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v181 + 96))(&v702);
      }

      else
      {
LABEL_937:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v521 = v695;
          if (v695)
          {
            v522 = v697;
            v523 = v698;
            v524 = v692;
            if (v700 == 1 && v692)
            {
              v525 = v690;
              v526 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v527 = v525;
                  (v526->__on_zero_shared)(v526);
                  std::__shared_weak_count::__release_weak(v526);
                  v525 = v527;
                }
              }

              (*(*v525 + 88))(v525, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v524 = v692;
            }

            v528 = v521 - 1;
            if (v528)
            {
              if (v180)
              {
                for (kk = 0; kk != v528; ++kk)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v530 = 0;
                  v531 = v180;
                  do
                  {
                    v703 = &v524[2 * v530];
                    v704 = 3;
                    sub_23F2E8C48(v10, &v703);
                    v530 += v522;
                    --v531;
                  }

                  while (v531);
                  v532 = *(v10 + 56);
                  *(v10 + 40) = *(v532 - 8);
                  *(v10 + 56) = v532 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v524 += 2 * v523;
                }
              }

              else
              {
                v669 = 4 * v523;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v670 = *(v10 + 56);
                  *(v10 + 40) = *(v670 - 8);
                  *(v10 + 56) = v670 - 8;
                  v524 = (v524 + v669);
                  --v528;
                }

                while (v528);
              }
            }

            sub_23F2E710C(v10);
            if (v180)
            {
              v671 = 0;
              do
              {
                v703 = &v524[2 * v671];
                v704 = 3;
                sub_23F2E8C48(v10, &v703);
                v671 += v522;
                --v180;
              }

              while (v180);
            }

            v672 = *(v10 + 56);
            *(v10 + 40) = *(v672 - 8);
            *(v10 + 56) = v672 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 21:
      sub_23F08E4D4(a3, &v690);
      v10 = *a2;
      v205 = v699;
      v206 = v690;
      if (!v690)
      {
        goto LABEL_1027;
      }

      v207 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v207->__on_zero_shared)(v207);
          std::__shared_weak_count::__release_weak(v207);
        }

        v206 = v690;
        v208 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v209 = v206;
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
            v206 = v209;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v206 + 96))(&v702);
      }

      else
      {
LABEL_1027:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v571 = v695;
          if (v695)
          {
            v572 = v698;
            v573 = v692;
            if (v700 == 1 && v692)
            {
              v574 = v690;
              v575 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v575->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v576 = v574;
                  (v575->__on_zero_shared)(v575);
                  std::__shared_weak_count::__release_weak(v575);
                  v574 = v576;
                }
              }

              (*(*v574 + 88))(v574, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v573 = v692;
            }

            v577 = v571 - 1;
            if (v571 != 1)
            {
              if (v205)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v573;
                v704 = 3;
                sub_23F2E7154(v10, &v703);
              }

              v573 = (v573 + v572 + v572 * (v571 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v688 = *(v10 + 56);
                *(v10 + 40) = *(v688 - 8);
                *(v10 + 56) = v688 - 8;
                --v577;
              }

              while (v577);
            }

            sub_23F2E710C(v10);
            if (v205)
            {
              v703 = v573;
              v704 = 3;
              sub_23F2E7154(v10, &v703);
            }

            v689 = *(v10 + 56);
            *(v10 + 40) = *(v689 - 8);
            *(v10 + 56) = v689 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 22:
      sub_23F133994(a3, &v690);
      v10 = *a2;
      v72 = v699;
      v73 = v690;
      if (!v690)
      {
        goto LABEL_577;
      }

      v74 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        v73 = v690;
        v75 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v76 = v73;
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
            v73 = v76;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v73 + 96))(&v702);
      }

      else
      {
LABEL_577:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v329 = v695;
          if (v695)
          {
            v330 = v698;
            v331 = v692;
            if (v700 == 1 && v692)
            {
              v332 = v690;
              v333 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v333->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v334 = v332;
                  (v333->__on_zero_shared)(v333);
                  std::__shared_weak_count::__release_weak(v333);
                  v332 = v334;
                }
              }

              (*(*v332 + 88))(v332, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v331 = v692;
            }

            v335 = v329 - 1;
            if (v335)
            {
              if (v72)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v331;
                v704 = 3;
                sub_23F2E807C(v10, &v703);
              }

              v616 = 2 * v330;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v617 = *(v10 + 56);
                *(v10 + 40) = *(v617 - 8);
                *(v10 + 56) = v617 - 8;
                v331 = (v331 + v616);
                --v335;
              }

              while (v335);
            }

            sub_23F2E710C(v10);
            if (v72)
            {
              v703 = v331;
              v704 = 3;
              sub_23F2E807C(v10, &v703);
            }

            v618 = *(v10 + 56);
            *(v10 + 40) = *(v618 - 8);
            *(v10 + 56) = v618 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 23:
      sub_23F134104(a3, &v690);
      v10 = *a2;
      v200 = v699;
      v201 = v690;
      if (!v690)
      {
        goto LABEL_1007;
      }

      v202 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v202->__on_zero_shared)(v202);
          std::__shared_weak_count::__release_weak(v202);
        }

        v201 = v690;
        v203 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v204 = v201;
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
            v201 = v204;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v201 + 96))(&v702);
      }

      else
      {
LABEL_1007:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v559 = v695;
          if (v695)
          {
            v560 = v697;
            v561 = v698;
            v562 = v692;
            if (v700 == 1 && v692)
            {
              v563 = v690;
              v564 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v564->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v565 = v563;
                  (v564->__on_zero_shared)(v564);
                  std::__shared_weak_count::__release_weak(v564);
                  v563 = v565;
                }
              }

              (*(*v563 + 88))(v563, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v562 = v692;
            }

            v566 = v559 - 1;
            if (v566)
            {
              if (v200)
              {
                for (mm = 0; mm != v566; ++mm)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v568 = 0;
                  v569 = v200;
                  do
                  {
                    v703 = &v562[v568];
                    v704 = 3;
                    sub_23F2E8824(v10, &v703);
                    v568 += v560;
                    --v569;
                  }

                  while (v569);
                  v570 = *(v10 + 56);
                  *(v10 + 40) = *(v570 - 8);
                  *(v10 + 56) = v570 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v562 += v561;
                }
              }

              else
              {
                v684 = 2 * v561;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v685 = *(v10 + 56);
                  *(v10 + 40) = *(v685 - 8);
                  *(v10 + 56) = v685 - 8;
                  v562 = (v562 + v684);
                  --v566;
                }

                while (v566);
              }
            }

            sub_23F2E710C(v10);
            if (v200)
            {
              v686 = 0;
              do
              {
                v703 = &v562[v686];
                v704 = 3;
                sub_23F2E8824(v10, &v703);
                v686 += v560;
                --v200;
              }

              while (v200);
            }

            v687 = *(v10 + 56);
            *(v10 + 40) = *(v687 - 8);
            *(v10 + 56) = v687 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 24:
      sub_23F134874(a3, &v690);
      v10 = *a2;
      v36 = v699;
      v37 = v690;
      if (!v690)
      {
        goto LABEL_452;
      }

      v38 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v690;
        v39 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v37 + 96))(&v702);
      }

      else
      {
LABEL_452:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v260 = v695;
          if (v695)
          {
            v261 = v697;
            v262 = v698;
            v263 = v692;
            if (v700 == 1 && v692)
            {
              v264 = v690;
              v265 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v265->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v266 = v264;
                  (v265->__on_zero_shared)(v265);
                  std::__shared_weak_count::__release_weak(v265);
                  v264 = v266;
                }
              }

              (*(*v264 + 88))(v264, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v263 = v692;
            }

            v267 = v260 - 1;
            if (v267)
            {
              if (v36)
              {
                for (nn = 0; nn != v267; ++nn)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v269 = 0;
                  v270 = v36;
                  do
                  {
                    v703 = &v263[2 * v269];
                    v704 = 3;
                    sub_23F2E8C48(v10, &v703);
                    v269 += v261;
                    --v270;
                  }

                  while (v270);
                  v271 = *(v10 + 56);
                  *(v10 + 40) = *(v271 - 8);
                  *(v10 + 56) = v271 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v263 += 2 * v262;
                }
              }

              else
              {
                v594 = 4 * v262;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v595 = *(v10 + 56);
                  *(v10 + 40) = *(v595 - 8);
                  *(v10 + 56) = v595 - 8;
                  v263 = (v263 + v594);
                  --v267;
                }

                while (v267);
              }
            }

            sub_23F2E710C(v10);
            if (v36)
            {
              v596 = 0;
              do
              {
                v703 = &v263[2 * v596];
                v704 = 3;
                sub_23F2E8C48(v10, &v703);
                v596 += v261;
                --v36;
              }

              while (v36);
            }

            v597 = *(v10 + 56);
            *(v10 + 40) = *(v597 - 8);
            *(v10 + 56) = v597 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 25:
      sub_23F134FE4(a3, &v690);
      v10 = *a2;
      v21 = v699;
      v22 = v690;
      if (!v690)
      {
        goto LABEL_402;
      }

      v23 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v22 = v690;
        v24 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v25 = v22;
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
            v22 = v25;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v22 + 96))(&v702);
      }

      else
      {
LABEL_402:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v234 = v695;
          if (v695)
          {
            v235 = v698;
            v236 = v692;
            if (v700 == 1 && v692)
            {
              v237 = v690;
              v238 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v239 = v237;
                  (v238->__on_zero_shared)(v238);
                  std::__shared_weak_count::__release_weak(v238);
                  v237 = v239;
                }
              }

              (*(*v237 + 88))(v237, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v236 = v692;
            }

            v240 = v234 - 1;
            if (v234 != 1)
            {
              if (v21)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v236;
                v704 = 4;
                sub_23F2E7154(v10, &v703);
              }

              v236 = (v236 + v235 + v235 * (v234 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v586 = *(v10 + 56);
                *(v10 + 40) = *(v586 - 8);
                *(v10 + 56) = v586 - 8;
                --v240;
              }

              while (v240);
            }

            sub_23F2E710C(v10);
            if (v21)
            {
              v703 = v236;
              v704 = 4;
              sub_23F2E7154(v10, &v703);
            }

            v587 = *(v10 + 56);
            *(v10 + 40) = *(v587 - 8);
            *(v10 + 56) = v587 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 26:
      sub_23F135750(a3, &v690);
      v10 = *a2;
      v77 = v699;
      v78 = v690;
      if (!v690)
      {
        goto LABEL_592;
      }

      v79 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v690;
        v80 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v78 + 96))(&v702);
      }

      else
      {
LABEL_592:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v336 = v695;
          if (v695)
          {
            v337 = v698;
            v338 = v692;
            if (v700 == 1 && v692)
            {
              v339 = v690;
              v340 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v340->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v341 = v339;
                  (v340->__on_zero_shared)(v340);
                  std::__shared_weak_count::__release_weak(v340);
                  v339 = v341;
                }
              }

              (*(*v339 + 88))(v339, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v338 = v692;
            }

            v342 = v336 - 1;
            if (v342)
            {
              if (v77)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v338;
                v704 = 4;
                sub_23F2E807C(v10, &v703);
              }

              v619 = 2 * v337;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v620 = *(v10 + 56);
                *(v10 + 40) = *(v620 - 8);
                *(v10 + 56) = v620 - 8;
                v338 = (v338 + v619);
                --v342;
              }

              while (v342);
            }

            sub_23F2E710C(v10);
            if (v77)
            {
              v703 = v338;
              v704 = 4;
              sub_23F2E807C(v10, &v703);
            }

            v621 = *(v10 + 56);
            *(v10 + 40) = *(v621 - 8);
            *(v10 + 56) = v621 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 27:
      sub_23F135EC0(a3, &v690);
      v10 = *a2;
      v11 = v699;
      v12 = v690;
      if (!v690)
      {
        goto LABEL_362;
      }

      v13 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v690;
        v14 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v12 + 96))(&v702);
      }

      else
      {
LABEL_362:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v210 = v695;
          if (v695)
          {
            v211 = v697;
            v212 = v698;
            v213 = v692;
            if (v700 == 1 && v692)
            {
              v214 = v690;
              v215 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v216 = v214;
                  (v215->__on_zero_shared)(v215);
                  std::__shared_weak_count::__release_weak(v215);
                  v214 = v216;
                }
              }

              (*(*v214 + 88))(v214, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v213 = v692;
            }

            v217 = v210 - 1;
            if (v217)
            {
              if (v11)
              {
                for (i1 = 0; i1 != v217; ++i1)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v219 = 0;
                  v220 = v11;
                  do
                  {
                    v703 = &v213[v219];
                    v704 = 4;
                    sub_23F2E8824(v10, &v703);
                    v219 += v211;
                    --v220;
                  }

                  while (v220);
                  v221 = *(v10 + 56);
                  *(v10 + 40) = *(v221 - 8);
                  *(v10 + 56) = v221 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v213 += v212;
                }
              }

              else
              {
                v578 = 2 * v212;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v579 = *(v10 + 56);
                  *(v10 + 40) = *(v579 - 8);
                  *(v10 + 56) = v579 - 8;
                  v213 = (v213 + v578);
                  --v217;
                }

                while (v217);
              }
            }

            sub_23F2E710C(v10);
            if (v11)
            {
              v580 = 0;
              do
              {
                v703 = &v213[v580];
                v704 = 4;
                sub_23F2E8824(v10, &v703);
                v580 += v211;
                --v11;
              }

              while (v11);
            }

            v581 = *(v10 + 56);
            *(v10 + 40) = *(v581 - 8);
            *(v10 + 56) = v581 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 28:
      sub_23F136630(a3, &v690);
      v10 = *a2;
      v98 = v699;
      v99 = v690;
      if (!v690)
      {
        goto LABEL_655;
      }

      v100 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v100->__on_zero_shared)(v100);
          std::__shared_weak_count::__release_weak(v100);
        }

        v99 = v690;
        v101 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v102 = v99;
            (v101->__on_zero_shared)(v101);
            std::__shared_weak_count::__release_weak(v101);
            v99 = v102;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v99 + 96))(&v702);
      }

      else
      {
LABEL_655:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v370 = v695;
          if (v695)
          {
            v371 = v697;
            v372 = v698;
            v373 = v692;
            if (v700 == 1 && v692)
            {
              v374 = v690;
              v375 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v375->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v376 = v374;
                  (v375->__on_zero_shared)(v375);
                  std::__shared_weak_count::__release_weak(v375);
                  v374 = v376;
                }
              }

              (*(*v374 + 88))(v374, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v373 = v692;
            }

            v377 = v370 - 1;
            if (v377)
            {
              if (v98)
              {
                for (i2 = 0; i2 != v377; ++i2)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v379 = 0;
                  v380 = v98;
                  do
                  {
                    v703 = &v373[2 * v379];
                    v704 = 4;
                    sub_23F2E8C48(v10, &v703);
                    v379 += v371;
                    --v380;
                  }

                  while (v380);
                  v381 = *(v10 + 56);
                  *(v10 + 40) = *(v381 - 8);
                  *(v10 + 56) = v381 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v373 += 2 * v372;
                }
              }

              else
              {
                v629 = 4 * v372;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v630 = *(v10 + 56);
                  *(v10 + 40) = *(v630 - 8);
                  *(v10 + 56) = v630 - 8;
                  v373 = (v373 + v629);
                  --v377;
                }

                while (v377);
              }
            }

            sub_23F2E710C(v10);
            if (v98)
            {
              v631 = 0;
              do
              {
                v703 = &v373[2 * v631];
                v704 = 4;
                sub_23F2E8C48(v10, &v703);
                v631 += v371;
                --v98;
              }

              while (v98);
            }

            v632 = *(v10 + 56);
            *(v10 + 40) = *(v632 - 8);
            *(v10 + 56) = v632 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 29:
      sub_23F136DA0(a3, &v690);
      v10 = *a2;
      v31 = v699;
      v32 = v690;
      if (!v690)
      {
        goto LABEL_437;
      }

      v33 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v32 = v690;
        v34 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v32 + 96))(&v702);
      }

      else
      {
LABEL_437:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v253 = v695;
          if (v695)
          {
            v254 = v698;
            v255 = v692;
            if (v700 == 1 && v692)
            {
              v256 = v690;
              v257 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v257->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v258 = v256;
                  (v257->__on_zero_shared)(v257);
                  std::__shared_weak_count::__release_weak(v257);
                  v256 = v258;
                }
              }

              (*(*v256 + 88))(v256, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v255 = v692;
            }

            v259 = v253 - 1;
            if (v253 != 1)
            {
              if (v31)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v255;
                v704 = 4;
                sub_23F2E7154(v10, &v703);
              }

              v255 = (v255 + v254 + v254 * (v253 - 2));
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v592 = *(v10 + 56);
                *(v10 + 40) = *(v592 - 8);
                *(v10 + 56) = v592 - 8;
                --v259;
              }

              while (v259);
            }

            sub_23F2E710C(v10);
            if (v31)
            {
              v703 = v255;
              v704 = 4;
              sub_23F2E7154(v10, &v703);
            }

            v593 = *(v10 + 56);
            *(v10 + 40) = *(v593 - 8);
            *(v10 + 56) = v593 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 30:
      sub_23F13750C(a3, &v690);
      v10 = *a2;
      v113 = v699;
      v114 = v690;
      if (!v690)
      {
        goto LABEL_715;
      }

      v115 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v690;
        v116 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v114 + 96))(&v702);
      }

      else
      {
LABEL_715:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v406 = v695;
          if (v695)
          {
            v407 = v698;
            v408 = v692;
            if (v700 == 1 && v692)
            {
              v409 = v690;
              v410 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v410->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v411 = v409;
                  (v410->__on_zero_shared)(v410);
                  std::__shared_weak_count::__release_weak(v410);
                  v409 = v411;
                }
              }

              (*(*v409 + 88))(v409, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v408 = v692;
            }

            v412 = v406 - 1;
            if (v412)
            {
              if (v113)
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v703 = v408;
                v704 = 4;
                sub_23F2E807C(v10, &v703);
              }

              v639 = 2 * v407;
              do
              {
                sub_23F07903C(v10 + 48, (v10 + 40));
                *(v10 + 40) = sub_23F2E6C78(v10);
                if (*(v10 + 88) == 1)
                {
                  *(v10 + 88) = 0;
                }

                v640 = *(v10 + 56);
                *(v10 + 40) = *(v640 - 8);
                *(v10 + 56) = v640 - 8;
                v408 = (v408 + v639);
                --v412;
              }

              while (v412);
            }

            sub_23F2E710C(v10);
            if (v113)
            {
              v703 = v408;
              v704 = 4;
              sub_23F2E807C(v10, &v703);
            }

            v641 = *(v10 + 56);
            *(v10 + 40) = *(v641 - 8);
            *(v10 + 56) = v641 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 31:
      sub_23F137C7C(a3, &v690);
      v10 = *a2;
      v82 = v699;
      v83 = v690;
      if (!v690)
      {
        goto LABEL_607;
      }

      v84 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v84->__on_zero_shared)(v84);
          std::__shared_weak_count::__release_weak(v84);
        }

        v83 = v690;
        v85 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v86 = v83;
            (v85->__on_zero_shared)(v85);
            std::__shared_weak_count::__release_weak(v85);
            v83 = v86;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v83 + 96))(&v702);
      }

      else
      {
LABEL_607:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v343 = v695;
          if (v695)
          {
            v344 = v697;
            v345 = v698;
            v346 = v692;
            if (v700 == 1 && v692)
            {
              v347 = v690;
              v348 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v348->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v349 = v347;
                  (v348->__on_zero_shared)(v348);
                  std::__shared_weak_count::__release_weak(v348);
                  v347 = v349;
                }
              }

              (*(*v347 + 88))(v347, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v346 = v692;
            }

            v350 = v343 - 1;
            if (v350)
            {
              if (v82)
              {
                for (i3 = 0; i3 != v350; ++i3)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v352 = 0;
                  v353 = v82;
                  do
                  {
                    v703 = &v346[v352];
                    v704 = 4;
                    sub_23F2E8824(v10, &v703);
                    v352 += v344;
                    --v353;
                  }

                  while (v353);
                  v354 = *(v10 + 56);
                  *(v10 + 40) = *(v354 - 8);
                  *(v10 + 56) = v354 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v346 += v345;
                }
              }

              else
              {
                v622 = 2 * v345;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v623 = *(v10 + 56);
                  *(v10 + 40) = *(v623 - 8);
                  *(v10 + 56) = v623 - 8;
                  v346 = (v346 + v622);
                  --v350;
                }

                while (v350);
              }
            }

            sub_23F2E710C(v10);
            if (v82)
            {
              v624 = 0;
              do
              {
                v703 = &v346[v624];
                v704 = 4;
                sub_23F2E8824(v10, &v703);
                v624 += v344;
                --v82;
              }

              while (v82);
            }

            v625 = *(v10 + 56);
            *(v10 + 40) = *(v625 - 8);
            *(v10 + 56) = v625 - 8;
            if (*(v10 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 32:
      sub_23F1383EC(a3, &v690);
      v10 = *a2;
      v123 = v699;
      v124 = v690;
      if (!v690)
      {
        goto LABEL_745;
      }

      v125 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v125->__on_zero_shared)(v125);
          std::__shared_weak_count::__release_weak(v125);
        }

        v124 = v690;
        v126 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v127 = v124;
            (v126->__on_zero_shared)(v126);
            std::__shared_weak_count::__release_weak(v126);
            v124 = v127;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v124 + 96))(&v702);
      }

      else
      {
LABEL_745:
        v702 = 0;
      }

      if (v693)
      {
        if (v694)
        {
          v420 = v695;
          if (v695)
          {
            v421 = v697;
            v422 = v698;
            v423 = v692;
            if (v700 == 1 && v692)
            {
              v424 = v690;
              v425 = v691;
              if (v691)
              {
                atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v425->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v426 = v424;
                  (v425->__on_zero_shared)(v425);
                  std::__shared_weak_count::__release_weak(v425);
                  v424 = v426;
                }
              }

              (*(*v424 + 88))(v424, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v423 = v692;
            }

            v427 = v420 - 1;
            if (v427)
            {
              if (v123)
              {
                for (i4 = 0; i4 != v427; ++i4)
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v429 = 0;
                  v430 = v123;
                  do
                  {
                    v703 = &v423[2 * v429];
                    v704 = 4;
                    sub_23F2E8C48(v10, &v703);
                    v429 += v421;
                    --v430;
                  }

                  while (v430);
                  v431 = *(v10 + 56);
                  *(v10 + 40) = *(v431 - 8);
                  *(v10 + 56) = v431 - 8;
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v423 += 2 * v422;
                }
              }

              else
              {
                v644 = 4 * v422;
                do
                {
                  sub_23F07903C(v10 + 48, (v10 + 40));
                  *(v10 + 40) = sub_23F2E6C78(v10);
                  if (*(v10 + 88) == 1)
                  {
                    *(v10 + 88) = 0;
                  }

                  v645 = *(v10 + 56);
                  *(v10 + 40) = *(v645 - 8);
                  *(v10 + 56) = v645 - 8;
                  v423 = (v423 + v644);
                  --v427;
                }

                while (v427);
              }
            }

            sub_23F2E710C(v10);
            if (v123)
            {
              v646 = 0;
              do
              {
                v703 = &v423[2 * v646];
                v704 = 4;
                sub_23F2E8C48(v10, &v703);
                v646 += v421;
                --v123;
              }

              while (v123);
            }

            v647 = *(v10 + 56);
            *(v10 + 40) = *(v647 - 8);
            *(v10 + 56) = v647 - 8;
            if (*(v10 + 88) == 1)
            {
LABEL_1312:
              *(v10 + 88) = 0;
            }
          }
        }
      }

      goto LABEL_1313;
    case 33:
      sub_23F138B5C(a3, &v690);
      v51 = *a2;
      v175 = v699;
      v176 = v690;
      if (!v690)
      {
        goto LABEL_922;
      }

      v177 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v177->__on_zero_shared)(v177);
          std::__shared_weak_count::__release_weak(v177);
        }

        v176 = v690;
        v178 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v179 = v176;
            (v178->__on_zero_shared)(v178);
            std::__shared_weak_count::__release_weak(v178);
            v176 = v179;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v176 + 96))(&v702);
      }

      else
      {
LABEL_922:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v514 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v515 = v698;
      v516 = v692;
      if (v700 == 1 && v692)
      {
        v517 = v690;
        v518 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v518->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v519 = v517;
            (v518->__on_zero_shared)(v518);
            std::__shared_weak_count::__release_weak(v518);
            v517 = v519;
          }
        }

        (*(*v517 + 88))(v517, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v516 = v692;
      }

      v520 = v514 - 1;
      if (v514 != 1)
      {
        if (v175)
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v516;
          v704 = 4;
          sub_23F2E7154(v51, &v703);
        }

        v516 = (v516 + v515 + v515 * (v514 - 2));
        do
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v668 = *(v51 + 56);
          *(v51 + 40) = *(v668 - 8);
          *(v51 + 56) = v668 - 8;
          --v520;
        }

        while (v520);
      }

      sub_23F2E710C(v51);
      if (v175)
      {
        v703 = v516;
        v704 = 4;
        sub_23F2E7154(v51, &v703);
      }

      return;
    case 34:
      sub_23F1392C8(a3, &v690);
      v51 = *a2;
      v118 = v699;
      v119 = v690;
      if (!v690)
      {
        goto LABEL_730;
      }

      v120 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v120->__on_zero_shared)(v120);
          std::__shared_weak_count::__release_weak(v120);
        }

        v119 = v690;
        v121 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v122 = v119;
            (v121->__on_zero_shared)(v121);
            std::__shared_weak_count::__release_weak(v121);
            v119 = v122;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v119 + 96))(&v702);
      }

      else
      {
LABEL_730:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v413 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v414 = v698;
      v415 = v692;
      if (v700 == 1 && v692)
      {
        v416 = v690;
        v417 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v417->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v418 = v416;
            (v417->__on_zero_shared)(v417);
            std::__shared_weak_count::__release_weak(v417);
            v416 = v418;
          }
        }

        (*(*v416 + 88))(v416, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v415 = v692;
      }

      v419 = v413 - 1;
      if (v419)
      {
        if (v118)
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v415;
          v704 = 4;
          sub_23F2E807C(v51, &v703);
        }

        v642 = 2 * v414;
        do
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v643 = *(v51 + 56);
          *(v51 + 40) = *(v643 - 8);
          *(v51 + 56) = v643 - 8;
          v415 = (v415 + v642);
          --v419;
        }

        while (v419);
      }

      sub_23F2E710C(v51);
      if (v118)
      {
        v703 = v415;
        v704 = 4;
        sub_23F2E807C(v51, &v703);
      }

      return;
    case 35:
      sub_23F139A38(a3, &v690);
      v51 = *a2;
      v108 = v699;
      v109 = v690;
      if (!v690)
      {
        goto LABEL_695;
      }

      v110 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v110->__on_zero_shared)(v110);
          std::__shared_weak_count::__release_weak(v110);
        }

        v109 = v690;
        v111 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v112 = v109;
            (v111->__on_zero_shared)(v111);
            std::__shared_weak_count::__release_weak(v111);
            v109 = v112;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v109 + 96))(&v702);
      }

      else
      {
LABEL_695:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v394 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v395 = v697;
      v396 = v698;
      v397 = v692;
      if (v700 == 1 && v692)
      {
        v398 = v690;
        v399 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v400 = v398;
            (v399->__on_zero_shared)(v399);
            std::__shared_weak_count::__release_weak(v399);
            v398 = v400;
          }
        }

        (*(*v398 + 88))(v398, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v397 = v692;
      }

      v401 = v394 - 1;
      if (v401)
      {
        if (v108)
        {
          for (i5 = 0; i5 != v401; ++i5)
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v403 = 0;
            v404 = v108;
            do
            {
              v703 = &v397[v403];
              v704 = 4;
              sub_23F2E8824(v51, &v703);
              v403 += v395;
              --v404;
            }

            while (v404);
            v405 = *(v51 + 56);
            *(v51 + 40) = *(v405 - 8);
            *(v51 + 56) = v405 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v397 += v396;
          }
        }

        else
        {
          v636 = 2 * v396;
          do
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v637 = *(v51 + 56);
            *(v51 + 40) = *(v637 - 8);
            *(v51 + 56) = v637 - 8;
            v397 = (v397 + v636);
            --v401;
          }

          while (v401);
        }
      }

      sub_23F2E710C(v51);
      if (v108)
      {
        v638 = 0;
        do
        {
          v703 = &v397[v638];
          v704 = 4;
          sub_23F2E8824(v51, &v703);
          v638 += v395;
          --v108;
        }

        while (v108);
      }

      break;
    case 36:
      sub_23F13A1A8(a3, &v690);
      v51 = *a2;
      v103 = v699;
      v104 = v690;
      if (!v690)
      {
        goto LABEL_675;
      }

      v105 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v105->__on_zero_shared)(v105);
          std::__shared_weak_count::__release_weak(v105);
        }

        v104 = v690;
        v106 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v107 = v104;
            (v106->__on_zero_shared)(v106);
            std::__shared_weak_count::__release_weak(v106);
            v104 = v107;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v104 + 96))(&v702);
      }

      else
      {
LABEL_675:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v382 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v383 = v697;
      v384 = v698;
      v385 = v692;
      if (v700 == 1 && v692)
      {
        v386 = v690;
        v387 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v387->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v388 = v386;
            (v387->__on_zero_shared)(v387);
            std::__shared_weak_count::__release_weak(v387);
            v386 = v388;
          }
        }

        (*(*v386 + 88))(v386, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v385 = v692;
      }

      v389 = v382 - 1;
      if (v389)
      {
        if (v103)
        {
          for (i6 = 0; i6 != v389; ++i6)
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v391 = 0;
            v392 = v103;
            do
            {
              v703 = &v385[2 * v391];
              v704 = 4;
              sub_23F2E8C48(v51, &v703);
              v391 += v383;
              --v392;
            }

            while (v392);
            v393 = *(v51 + 56);
            *(v51 + 40) = *(v393 - 8);
            *(v51 + 56) = v393 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v385 += 2 * v384;
          }
        }

        else
        {
          v633 = 4 * v384;
          do
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v634 = *(v51 + 56);
            *(v51 + 40) = *(v634 - 8);
            *(v51 + 56) = v634 - 8;
            v385 = (v385 + v633);
            --v389;
          }

          while (v389);
        }
      }

      sub_23F2E710C(v51);
      if (v103)
      {
        v635 = 0;
        do
        {
          v703 = &v385[2 * v635];
          v704 = 4;
          sub_23F2E8C48(v51, &v703);
          v635 += v383;
          --v103;
        }

        while (v103);
      }

      break;
    case 37:
      sub_23F13A918(a3, &v690);
      v51 = *a2;
      v160 = v699;
      v161 = v690;
      if (!v690)
      {
        goto LABEL_872;
      }

      v162 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v162->__on_zero_shared)(v162);
          std::__shared_weak_count::__release_weak(v162);
        }

        v161 = v690;
        v163 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v164 = v161;
            (v163->__on_zero_shared)(v163);
            std::__shared_weak_count::__release_weak(v163);
            v161 = v164;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v161 + 96))(&v702);
      }

      else
      {
LABEL_872:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v488 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v489 = v698;
      v490 = v692;
      if (v700 == 1 && v692)
      {
        v491 = v690;
        v492 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v492->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v493 = v491;
            (v492->__on_zero_shared)(v492);
            std::__shared_weak_count::__release_weak(v492);
            v491 = v493;
          }
        }

        (*(*v491 + 88))(v491, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v490 = v692;
      }

      v494 = v488 - 1;
      if (v488 != 1)
      {
        if (v160)
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v490;
          v704 = 4;
          sub_23F2E7154(v51, &v703);
        }

        v490 = (v490 + v489 + v489 * (v488 - 2));
        do
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v660 = *(v51 + 56);
          *(v51 + 40) = *(v660 - 8);
          *(v51 + 56) = v660 - 8;
          --v494;
        }

        while (v494);
      }

      sub_23F2E710C(v51);
      if (v160)
      {
        v703 = v490;
        v704 = 4;
        sub_23F2E7154(v51, &v703);
      }

      return;
    case 38:
      sub_23F13B084(a3, &v690);
      v51 = *a2;
      v185 = v699;
      v186 = v690;
      if (!v690)
      {
        goto LABEL_957;
      }

      v187 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v690;
        v188 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v186 + 96))(&v702);
      }

      else
      {
LABEL_957:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v533 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v534 = v698;
      v535 = v692;
      if (v700 == 1 && v692)
      {
        v536 = v690;
        v537 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v535 = v692;
      }

      v539 = v533 - 1;
      if (v539)
      {
        if (v185)
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v703 = v535;
          v704 = 4;
          sub_23F2E807C(v51, &v703);
        }

        v673 = 2 * v534;
        do
        {
          sub_23F07903C(v51 + 48, (v51 + 40));
          *(v51 + 40) = sub_23F2E6C78(v51);
          if (*(v51 + 88) == 1)
          {
            *(v51 + 88) = 0;
          }

          v674 = *(v51 + 56);
          *(v51 + 40) = *(v674 - 8);
          *(v51 + 56) = v674 - 8;
          v535 = (v535 + v673);
          --v539;
        }

        while (v539);
      }

      sub_23F2E710C(v51);
      if (v185)
      {
        v703 = v535;
        v704 = 4;
        sub_23F2E807C(v51, &v703);
      }

      return;
    case 39:
      sub_23F13B7F4(a3, &v690);
      v51 = *a2;
      v67 = v699;
      v68 = v690;
      if (!v690)
      {
        goto LABEL_557;
      }

      v69 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v69->__on_zero_shared)(v69);
          std::__shared_weak_count::__release_weak(v69);
        }

        v68 = v690;
        v70 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v71 = v68;
            (v70->__on_zero_shared)(v70);
            std::__shared_weak_count::__release_weak(v70);
            v68 = v71;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v68 + 96))(&v702);
      }

      else
      {
LABEL_557:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v317 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v318 = v697;
      v319 = v698;
      v320 = v692;
      if (v700 == 1 && v692)
      {
        v321 = v690;
        v322 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v322->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v323 = v321;
            (v322->__on_zero_shared)(v322);
            std::__shared_weak_count::__release_weak(v322);
            v321 = v323;
          }
        }

        (*(*v321 + 88))(v321, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v320 = v692;
      }

      v324 = v317 - 1;
      if (v324)
      {
        if (v67)
        {
          for (i7 = 0; i7 != v324; ++i7)
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v326 = 0;
            v327 = v67;
            do
            {
              v703 = &v320[v326];
              v704 = 4;
              sub_23F2E8824(v51, &v703);
              v326 += v318;
              --v327;
            }

            while (v327);
            v328 = *(v51 + 56);
            *(v51 + 40) = *(v328 - 8);
            *(v51 + 56) = v328 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v320 += v319;
          }
        }

        else
        {
          v613 = 2 * v319;
          do
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v614 = *(v51 + 56);
            *(v51 + 40) = *(v614 - 8);
            *(v51 + 56) = v614 - 8;
            v320 = (v320 + v613);
            --v324;
          }

          while (v324);
        }
      }

      sub_23F2E710C(v51);
      if (v67)
      {
        v615 = 0;
        do
        {
          v703 = &v320[v615];
          v704 = 4;
          sub_23F2E8824(v51, &v703);
          v615 += v318;
          --v67;
        }

        while (v67);
      }

      break;
    case 40:
      sub_23F13BF64(a3, &v690);
      v51 = *a2;
      v52 = v699;
      v53 = v690;
      if (!v690)
      {
        goto LABEL_502;
      }

      v54 = v691;
      if (v691)
      {
        atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v54->__on_zero_shared)(v54);
          std::__shared_weak_count::__release_weak(v54);
        }

        v53 = v690;
        v55 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v56 = v53;
            (v55->__on_zero_shared)(v55);
            std::__shared_weak_count::__release_weak(v55);
            v53 = v56;
          }
        }
      }

      if (v701 == 1)
      {
        (*(*v53 + 96))(&v702);
      }

      else
      {
LABEL_502:
        v702 = 0;
      }

      if (!v693)
      {
        goto LABEL_1313;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      v286 = v695;
      if (!v695)
      {
        goto LABEL_1313;
      }

      v287 = v697;
      v288 = v698;
      v289 = v692;
      if (v700 == 1 && v692)
      {
        v290 = v690;
        v291 = v691;
        if (v691)
        {
          atomic_fetch_add_explicit(&v691->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v291->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v292 = v290;
            (v291->__on_zero_shared)(v291);
            std::__shared_weak_count::__release_weak(v291);
            v290 = v292;
          }
        }

        (*(*v290 + 88))(v290, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v289 = v692;
      }

      v293 = v286 - 1;
      if (v293)
      {
        if (v52)
        {
          for (i8 = 0; i8 != v293; ++i8)
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v295 = 0;
            v296 = v52;
            do
            {
              v703 = &v289[2 * v295];
              v704 = 4;
              sub_23F2E8C48(v51, &v703);
              v295 += v287;
              --v296;
            }

            while (v296);
            v297 = *(v51 + 56);
            *(v51 + 40) = *(v297 - 8);
            *(v51 + 56) = v297 - 8;
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v289 += 2 * v288;
          }
        }

        else
        {
          v603 = 4 * v288;
          do
          {
            sub_23F07903C(v51 + 48, (v51 + 40));
            *(v51 + 40) = sub_23F2E6C78(v51);
            if (*(v51 + 88) == 1)
            {
              *(v51 + 88) = 0;
            }

            v604 = *(v51 + 56);
            *(v51 + 40) = *(v604 - 8);
            *(v51 + 56) = v604 - 8;
            v289 = (v289 + v603);
            --v293;
          }

          while (v293);
        }
      }

      sub_23F2E710C(v51);
      if (v52)
      {
        v605 = 0;
        do
        {
          v703 = &v289[2 * v605];
          v704 = 4;
          sub_23F2E8C48(v51, &v703);
          v605 += v287;
          --v52;
        }

        while (v52);
      }

      break;
    default:
      return;
  }

  v675 = *(v51 + 56);
  *(v51 + 40) = *(v675 - 8);
  *(v51 + 56) = v675 - 8;
  if (*(v51 + 88) == 1)
  {
    *(v51 + 88) = 0;
  }

LABEL_1313:
  v680 = v702;
  v702 = 0;
  if (v680)
  {
    (*(*v680 + 8))(v680);
  }

  v681 = v691;
  if (v691 && !atomic_fetch_add(&v691->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v681->__on_zero_shared)(v681);
    std::__shared_weak_count::__release_weak(v681);
  }
}